package br.com.felipedpl.notificationclient.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class InfoResponse {

	private String returnCode;
	private String returnDescription;
//	private String response;
}
