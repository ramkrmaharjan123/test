package com.kcing.location;

import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.concurrent.ConcurrentHashMap;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;


public class EmailTest {
	
	
	private JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	
	
	/** The map of Xsl template objects **/
	private static Map<String, Templates> XslTemplateCache = new ConcurrentHashMap<String, Templates>();
	
	public static void main(String[] args) {
		
		EmailTest e = new EmailTest();
		e.sendEmail();


	}
	
	public void sendEmail() {

		try {
			MimeMessagePreparator preparator = new MimeMessagePreparator() {
				public void prepare(MimeMessage mimeMessage) throws Exception {
					buildXsltMessage(mimeMessage, "ramkrishna.maharjan@carefirst.com", "ramkrishna.maharjan@carefirst.com", "ramkrishna.maharjan@carefirst.com", "ramkrishna.maharjan@carefirst.com", generateSecurityTokenInputXml("234567"), "xsl/Chinese_Char_Test.xsl");
				}
			};
			this.getMailSender().send(preparator);
		} catch (MailException e) {
			e.printStackTrace();
		}

	}
	
	private void buildXsltMessage(MimeMessage mimeMessage, String toEmailAddress, String fromEmailAddress, String fromDisplayName, String subject, String inputXmlString, String xsltFileName) throws MessagingException, UnsupportedEncodingException, TransformerException{
		MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
		message.setTo(toEmailAddress);
		message.setSubject("Hello");
		message.setFrom(fromEmailAddress, fromDisplayName);
		String text = xsltTransform(inputXmlString, xsltFileName); 
		System.out.println(text);
		message.setText(text, true);
	}
	
	private String xsltTransform(String inputXmlString, String xsltFileName) throws TransformerException, UnsupportedEncodingException {
		StringReader stringReader = new StringReader(inputXmlString);
		StringWriter stringWriter = new StringWriter();

		try {
	    
	    // create an transformer from cached templates
	    Transformer transformer = getTransformer(xsltFileName);
	    transformer.setOutputProperty(OutputKeys.ENCODING, "utf-8");
	    transformer.transform(new StreamSource(stringReader), new StreamResult(stringWriter));
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	    return stringWriter.toString();

	}
	
	//create a templates cache, and get transformers from the cached templates
	private Transformer getTransformer (String xsltFileName) throws TransformerConfigurationException
    {
        Templates templates = (Templates)XslTemplateCache.get(xsltFileName);
        if (templates == null)
        {
            TransformerFactory factory = TransformerFactory.newInstance();

            templates = factory.newTemplates(new StreamSource(this.getClass().getClassLoader().getResourceAsStream(xsltFileName)));

            XslTemplateCache.put(xsltFileName, templates);
        }
        Transformer transformer = templates.newTransformer();
        return transformer;
    }
	

	private String generateSecurityTokenInputXml(String securityCode) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?> ");
		buffer.append("<securityCode>");
		buffer.append(securityCode);
		buffer.append("</securityCode>");
		return buffer.toString();
	}

	public JavaMailSenderImpl getMailSender() {
		if(mailSender == null) {
			mailSender = new JavaMailSenderImpl();
		}
		mailSender.setHost("mime.carefirst.com");
		mailSender.setPort(587 );
		mailSender.setUsername("aac5790@carefirst.com");
		mailSender.setPassword("RamLalita9847");
		return mailSender;
	}

	public void setMailSender(JavaMailSenderImpl mailSender) {
		this.mailSender = mailSender;
	}
}
