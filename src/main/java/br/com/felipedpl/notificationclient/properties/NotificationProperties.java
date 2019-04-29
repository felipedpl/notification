package br.com.felipedpl.notificationclient.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@ConfigurationProperties("notification")
public class NotificationProperties {

	@Getter @Setter
	private String url;
}
