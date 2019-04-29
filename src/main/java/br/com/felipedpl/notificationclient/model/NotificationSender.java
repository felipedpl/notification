package br.com.felipedpl.notificationclient.model;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class NotificationSender {

	private int id;
	private String title;
	private String body;
	private String startDateTime;
	private String endDateTime;
	private List<String> mid = new ArrayList<>();
	private List<String> inst = new ArrayList<>();
}
