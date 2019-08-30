package br.com.felipedpl.notificationclient.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import br.com.felipedpl.notificationclient.model.InfoResponse;
import br.com.felipedpl.notificationclient.model.Notification;
import br.com.felipedpl.notificationclient.model.NotificationSender;
import br.com.felipedpl.notificationclient.model.Push;
import br.com.felipedpl.notificationclient.model.PushDTOModel;
import br.com.felipedpl.notificationclient.properties.NotificationProperties;

@Controller
@RequestMapping("/notification")
public class NotificationController {
	
	@Autowired
	private NotificationProperties properties;

	@GetMapping("/form")
	public ModelAndView getForm(Model model) {
		return new ModelAndView("/notification/form");	
	}
	
	@PostMapping("/form/send")
	public ModelAndView processingForm(Notification notification, RedirectAttributes attributes) {
		System.out.println("Received: " + notification);
		InfoResponse resp = makeRequest(notification);
		attributes.addFlashAttribute("message", resp.getReturnDescription());
		return new ModelAndView("redirect:/index");
	}

	private InfoResponse makeRequest(Notification notification) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity<NotificationSender> entity = new HttpEntity<>(prepare(notification), header);
		
		ResponseEntity<InfoResponse> response = restTemplate.exchange(properties.getUrl(), 
				HttpMethod.POST, entity, InfoResponse.class);
		System.out.println("Response Status: " + response.getStatusCode());
		
		if (response.hasBody())
			return response.getBody();
		
		return new InfoResponse();
	}

	private NotificationSender prepare(Notification notification) {
		NotificationSender notificationSender = new NotificationSender();
		notificationSender.setId(Integer.parseInt(notification.getId()));
		notificationSender.setTitle(notification.getTitle());
		notificationSender.setBody(notification.getBody());
		notificationSender.setStartDateTime(formatDateTime(notification.getInitialDate()));
		notificationSender.setEndDateTime(formatDateTime(notification.getEndDate()));
		
		if (notification.getMid() != null && !"".equals(notification.getMid())) {
			notificationSender.setMid(Arrays.asList(notification.getMid().split(",")));
		}
		
		if (notification.getInst() != null && !"".equals(notification.getInst())) {
			notificationSender.setInst(Arrays.asList(notification.getInst().split(",")));
		}
		
		System.out.println(notificationSender);
		return notificationSender;
	}
	
	private String formatDateTime(String dateTime) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date d = new Date();
		
		try {
			d = format.parse(dateTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		format.applyPattern("yyyyMMdd HH:mm:ss");
		//"yyyyMMdd HH:mm:ss"
		return format.format(d);
	}
	
	@GetMapping("/form/push")
	public ModelAndView getFormPush(Model model) {
		return new ModelAndView("/notification/push");	
	}
	
	@PostMapping("/form/send/push")
	public ModelAndView processingFormPush(Push push, RedirectAttributes attributes) {
		System.out.println("Received: " + push);
		InfoResponse resp = makeRequest(push);
		attributes.addFlashAttribute("message", resp.getReturnDescription());
		return new ModelAndView("redirect:/index");
	}

	private InfoResponse makeRequest(Push push) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON_UTF8);
		HttpEntity<PushDTOModel> entity = new HttpEntity<>(
				new PushDTOModel("OPEN_APP", push.getTitle(), push.getBody()), header);
		
		String url = properties.getUrl();
		UriComponentsBuilder uriBuilder = UriComponentsBuilder.fromHttpUrl(url)
				.queryParam("establishments", push.getEstablishments());
		
		ResponseEntity<HttpMethod> response = restTemplate.exchange(uriBuilder.toUriString(), 
				HttpMethod.POST, entity, HttpMethod.class);
		System.out.println("Response Status: " + response.getStatusCode());
		
		return new InfoResponse(response.getStatusCode().toString(), "PUSH enviado com sucesso!");
	}
}
