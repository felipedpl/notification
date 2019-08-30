package br.com.felipedpl.notificationclient.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Push {

	@Getter @Setter
	private String title;
	@Getter @Setter
	private String body;
	@Getter @Setter
	private String establishments;
}
