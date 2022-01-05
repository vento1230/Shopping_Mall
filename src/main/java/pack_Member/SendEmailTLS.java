package pack_Member;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;


public class SendEmailTLS {

    public static void main(String[] args) {

        final String username = "vento12300@gmail.com"; //G-Mail 사용자
        final String password = ""; //G-Mail 비번

        Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
        	
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("vento1230@gmail.com")); //보내는 이메일
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse("vento1230@naver.com") //받는 이메일
            );
            message.setSubject("Testing Gmail TLS");
            message.setText("Dear Mail Crawler,"
                    + "\n\n Please do not spam my email!");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

}