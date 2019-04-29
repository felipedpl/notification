package br.com.felipedpl.notificationclient.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class Notification {

	private String id;
	private String title;
	private String body;
	private String initialDate;
	private String endDate;
	private String mid;
	private String inst;
}
