package br.com.felipedpl.notificationclient.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PushDTOModel {

	@Getter @Setter
	private String action;
	@Getter @Setter
	private String title;
	@Getter @Setter
	private String body;
}
