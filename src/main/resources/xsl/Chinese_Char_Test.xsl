<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="html" encoding="utf-8" indent="yes" />
	<xsl:template match="/">
	<html hola_ext_inject="disabled" xmlns="http://www.w3.org/1999/xhtml" lang="en">
   <head>
      <meta charset="utf-8"/>
      <!--[if !mso]><!-->
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <!--<![endif]-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet"/>
      <!--Change the title of the email template-->
      <title>Temporary Password</title>
      <!--[if mso]>
      <style type=”text/css”>
         body {
         font-family: Arial, sans-serif;
         }
      </style>
      <![endif]-->
      <style type="text/css">
         [style*="Open Sans"] {
         font-family: 'Open Sans', Arial, sans-serif !important;
         }
         @font-face {
         font-family: 'Open Sans';
         font-style: normal;
         font-weight: 400;
         src:local('Open Sans'), local('OpenSans'), url('http://fonts.gstatic.com/s/opensans/v10/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff') format('woff');
         }
         @font-face {
         font-family: 'Open Sans';
         font-style: normal;
         font-weight: 600;
         src: local('Open Sans SemiBold'), local('OpenSans-SemiBold'), url(https://fonts.gstatic.com/s/opensans/v15/mem5YaGs126MiZpBA-UNirkOUuhvKKSTjw.woff) format('woff');
         }
         * {
         -ms-text-size-adjust: 100%;
         -webkit-text-size-adjust: 100%;
         }
         /* Basics */
         body {              
         background:#f2f2f2;
         font-family: 'Open Sans', Arial, sans-serif;
         -webkit-font-smoothing: antialiased;	 
         font-size:14px;	
         color:#404040;	
		 line-height:1.5;
         } 
		  p {
			  line-height:1.5;
		 } 
         img {
         border: 0;
         }            
         .webkit {
         margin:0 auto;
         padding:0px 20px;
         background:#f2f2f2;
         }
         .outer {
         Margin: 0 auto; /* Capitalize Margin so it's not stripped out by Outlook.com - neat hack */
         width: 100%;
         max-width: 600px;
         }         
         .g-img { /* Specified width on banner image for Outlook, it will resize in other clients with the width: 100% */
         width: 100%;
         max-width: 600px; /* Set max-width to match pixel width set in html for Windows phone */
         height: auto; /* Set height to auto so image doesn't have the wrong aspect ratio */ }  
         /* There is no way to set these inline so you have the option of adding pseudo class definitions here. They won't work for Gmail or older Lotus Notes but it's a nice addition for all other clients. */
         a {
         color:#086ea1;
         text-decoration:underline;
         }	
         a:hover {
         color: #086ea1;
         text-decoration: none;
         }
         .primary-btn:hover {
         color: #ffffff !important;
         text-decoration: none;
         }	
         .secondary-btn:hover {
         color: #086ea1 !important;
         text-decoration: none;
         }	
         .small-font{
         font-size:11px !important;
		line-height:15px;	 
         } 
         /* A nice and clean way to target phone numbers you want clickable and avoid a mobile phone from
         linking other numbers that look like, but are not phone numbers. Use these two blocks of code to
         "unstyle" any numbers that may be linked. The second block gives you a class ".mobile_link" to apply
         with a span tag to the numbers you would like linked and styled.
         More info: http://www.campaignmonitor.com/blog/post/3571/using-phone-numbers-in-html-email/ */
         a[href^="tel"], a[href^="sms"] {
         text-decoration: underline;
         color: #086ea1;
         pointer-events: auto;
         cursor: default;
         }
         a[href^="tel"]:hover, a[href^="sms"]:hover
         {
         text-decoration:none;
         }
         /* Makes the phone number stay on one line */
         .nobr {
         white-space: nowrap;
         }
         /* Makes date and number text not turn blue on IOS devices */
         a[x-apple-data-detectors] {
         color: inherit !important;
         text-decoration: none !important;
         font-size: inherit !important;
         font-family: inherit !important;
         font-weight: inherit !important;
         line-height: inherit !important;
         }
         /*Media Queries*/
         @media screen and (max-width: 679px) {
         .logo{
         text-align:center !important;
         }		 
         .two-column .column-50,
         .two-column .column-20,
         .two-column .column-30,
         .two-column .column-70
         .two-column .column-80{
         width:100% !important;
         max-width: 100% !important;
         }
         .fluid {
         max-width: 100% !important;
         height: auto !important;
         margin-left: auto !important;
         margin-right: auto !important;
         }
         .img-center{
         text-align:center !important;
         }
         .pb-10{
         padding-bottom:10px !important;
         }
         .btn-table{
         width:100% !important;
         }
         }
         @media screen and (min-width: 680px) {
         .two-column .column-20 {
         max-width: 20% !important;
         }
         .two-column .column-30 {
         max-width: 30% !important;
         }
         .two-column .column-70 {
         max-width: 70% !important;
         }
         .two-column .column-80 {
         max-width: 80% !important;
         }	 
         .two-column .column-50 {
         max-width: 50% !important;
         }
         /* Makes date and number text not turn blue on IOS devices */
         a[x-apple-data-detectors] {
         color: inherit !important;
         text-decoration: none !important;
         font-size: inherit !important;
         font-family: inherit !important;
         font-weight: inherit !important;
         line-height: inherit !important;
         }
         }
      </style>
   </head>
   <body bgcolor="#f2f2f2">
      <style>
         @media screen and (max-width: 679px) {
         .logo{
         text-align:center !important;
         }
         .two-column .column-50,
         .two-column .column-20,
         .two-column .column-30,
         .two-column .column-70,
         .two-column .column-80{
         width:100% !important;
         max-width: 100% !important;
         }
         .fluid {
         max-width: 100% !important;
         height: auto !important;
         margin-left: auto !important;
         margin-right: auto !important;
         }
         .img-center{
         text-align:center !important;
         }
         .pb-10{
         padding-bottom:10px !important;
         }
         .btn-table{
         width:100% !important;
         }		 
         }
         @media screen and (min-width: 680px) {
         .two-column .column-20 {
         max-width: 20% !important;
         }
         .two-column .column-30 {
         max-width: 30% !important;
         }
         .two-column .column-70 {
         max-width: 70% !important;
         }
         .two-column .column-80 {
         max-width: 80% !important;
         }	 
         .two-column .column-50 {
         max-width: 50% !important;
         }
         /* Makes date and number text not turn blue on IOS devices */
         a[x-apple-data-detectors] {
         color: inherit !important;
         text-decoration: none !important;
         font-size: inherit !important;
         font-family: inherit !important;
         font-weight: inherit !important;
         line-height: inherit !important;
         }
         }
      </style>
      <div class="webkit" lang="en">
         <!--[if (gte mso 9)|(IE)]>
         <table width="600" align="center" cellpadding="0" cellspacing="0" border="0" role="presentation">
         <tr>
            <td>
               <![endif]-->
               <table class="outer" align="center" cellpadding="0" cellspacing="0" border="0" role="presentation">
                  <tbody>
                     <!-- Email Header : BEGIN -->
                     <tr>
                        <td class="one-column logo" style="padding:10px 35px 15px 35px;">
                           <img src="http://www.carefirst.com/enewsletters/images/carefirst-logo.png"  width="197" height="31" alt="CareFirst Logo" border="0" />
                        </td>
                     </tr>
                     <!-- Email Header : END -->                     
                     <!-- Intro Card : BEGIN -->
                     <tr>
                        <td class="one-column card" bgcolor="#ffffff" style="padding: 0px 35px;">
                           <table width="100%" cellpadding="0" cellspacing="0" border="0" role="presentation">
                              <!-- Spacer : BEGIN -->
                              <tr>
                                 <td height="35"></td>
                              </tr>
                              <!-- Spacer : END -->
                              <tr>
                                 <td>
                                    <h1 style="font-size: 21px;color: #0099cc;margin:0;font-weight:600;">Temporary Password</h1>
                                 </td>
                              </tr>
                              <tr>
                                 <td height="10"></td>
                              </tr>
                              <tr>
                                 <td>
                                    <!-- Waifer STARTS-->
                                    <table width="60" bgcolor="#b7b7b7" border="0" cellpadding="0" cellspacing="0" align="left" role="presentation">
                                       <tbody>
                                          <tr>
                                             <td height="5"></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                    <!-- Waifer ENDS-->
                                 </td>
                              </tr>
                              <tr>
                                 <td height="20"></td>
                              </tr>
                              <tr>
                                 <td>
                                    <p>Dear Member,<br/><br/>
										Our records indicate that you requested a temporary password.</p>
									<p> The temporary password is:</p>
									 <p style="font-size: 20px;"><strong>1234</strong></p>
							   		<p style="padding-bottom:0px;margin-bottom:0px;"> If you did not initiate this change, please contact Technical Support at <a href="tel:877-526-8390" class="nobr" style="color:#086ea1;cursor:pointer;" >877-526-8390</a> Monday - Friday from 7 a.m. to 6 p.m. (Eastern Time).
							   		</p>
                                 </td>
                              </tr>
                              <!-- Spacer : BEGIN -->
                              <tr>
                                 <td height="35"></td>
                              </tr>
                              <!-- Spacer : END -->
                              
                              <!-- Spacer : BEGIN -->
                              
                              <!-- Spacer : END -->
                           </table>
                        </td>
                     </tr>
                     <!-- Intro Card : END -->
                     <!-- Card Breaker BEGIN-->
                     
                     <!-- Card Breaker END-->
                     <!-- 2 Column Card : BEGIN -->
                     
                     <!-- 2 Column Card : END -->
                     <tr>
                        <td height="20"></td>
                     </tr>
                     <!--- CareFirst Disclamer : START-->
                     <tr>
                        <td class="one-column card" style="padding:0px 35px;font-size:11px;">
                           <p class="small-font">If you are not able to view your message or you need other technical assistance, please call Technical Support at <a href="tel:877-526-8390" class="nobr" style="color:#086ea1;cursor:pointer;" >877-526-8390</a>, Monday - Friday, 8 a.m. - 6 p.m. (Eastern Time).</p>
                           
                           <p class="small-font">ATENCIÓN: Si habla español, tiene a su disposición servicios gratuitos de asistencia lingüística. Llame al <a href="tel:855-258-6518" class="nobr" style="color:#086ea1;cursor:pointer;">855-258-6518</a><br/>
                              注意：如果您使用繁體中文，您可以免費獲得語言援助服務。請致電 <a href="tel:855-258-6518" class="nobr" style="color:#086ea1;cursor:pointer">855-258-6518</a>
                           </p>
                           <p class="small-font">CareFirst BlueCross BlueShield, CareFirst BlueChoice, Inc. and all of their corporate affiliates comply with applicable federal civil rights laws and do not discriminate on the basis of race, color, national origin, age, disability or sex.</p>
                           <p class="small-font">The information in this email is confidential. Please do not reply to this message. This email message was sent from a notification-only address that cannot accept incoming email.</p>
                        </td>
                     </tr>
                     <!--- CareFirst Disclamer : END-->
                     <tr><td height="10"></td></tr>
                     <!-- footer hr row starts here-->
                     <tr>
                        <td class="one-column card" style="padding:0px 35px;">
                           <hr style="background: #dddddd;border: 0px;height: 1px;"/>
                        </td>
                     </tr>
                     <!-- footer hr row ends here-->
                     <tr>
                        <td height="20"></td>
                     </tr>
                     <!-- footer logo row starts here-->
                     <tr>
                        <td class="one-column card" align="center" style="padding:0px 35px;">
                           <img src="http://www.carefirst.com/enewsletters/images/carefirst-logo.png"  width="197" height="31" alt="CareFirst Logo" border="0" />
                        </td>
                     </tr>
                     <!-- footer logo row ends here-->
                     <tr>
                        <td height="10"></td>
                     </tr>
                     <!-- CareFirst Branding Statement Starts here-->
                     <tr>
                        <td  class="one-column card" style="padding:0px 35px;font-size:11px;">
                           <p class="small-font">Serving Maryland, the District of Columbia and portions of Virginia, CareFirst BlueCross BlueShield is the shared business name of CareFirst of Maryland, Inc. and Group Hospitalization and Medical Services, Inc. In the District of Columbia and Maryland, CareFirst MedPlus is the business name of First Care, Inc. In Virginia, CareFirst MedPlus is the business name of First Care, Inc. of Maryland (Used in VA by: First Care, Inc.). First Care, Inc., CareFirst of Maryland, Inc., Group Hospitalization and Medical Services, Inc., CareFirst BlueChoice, Inc. and The Dental Network are independent licensees of the Blue Cross and Blue Shield Association. The Blue Cross® and Blue Shield® and the Cross and Shield Symbols are registered service marks of the Blue Cross and Blue Shield Association, an association of independent Blue Cross and Blue Shield Plans.</p>
                           <p class="small-font">CareFirst of Maryland, Inc. and The Dental Network underwrite products in Maryland only. </p>
                        </td>
                     </tr>
                     <!-- Card Breaker BEGIN-->
                     <tr>
                        <td height="10"></td>
                     </tr>
                     <!-- Card Breaker END-->
                     <!-- CareFirst Branding Statement End here-->
                     <tr>
                        <td>
                           <table id="social-table" align="center" cellpadding="0" cellspacing="0" border="0" role="presentation">
                              <tbody>
                                 <tr>
                                    <td style="padding:3px;"><a href="https://www.carefirst.com/facebook" target="_blank" name="carefirst facebook"><img title="Like us on Facebook" alt="Like us on Facebook" src="http://www.carefirst.com/enewsletters/images/social/facebook.png" height="28" border="0" width="13"/></a></td>
                                    <td style="padding:3px;"><a href="https://www.carefirst.com/twitter" target="_blank" name="carefirst twitter"><img title="Follow us on Twitter" alt="Follow us on Twitter" src="http://www.carefirst.com/enewsletters/images/social/twitter.png" height="50" border="0" width="28"/></a></td>
                                    <td style="padding:3px;"><a href="https://www.carefirst.com/youtube" target="_blank" name="carefirst youtube"><img title="Watch us on YouTube" alt="Watch us on YouTube" src="http://www.carefirst.com/enewsletters/images/social/youtube.png" height="50" border="0" width="34"/></a></td>
                                    <td style="text-align:center;padding:3px;"><a href="https://www.carefirst.com/linkedin" target="_blank" name="carefirst linkedin"><img title="Join us on LinkedIn" alt="Join us on LinkedIn" src="http://www.carefirst.com/enewsletters/images/social/linkedin.png" height="28" border="0" width="28"/></a></td>
                                    <td style="text-align:center;padding:3px;"><a href="https://www.carefirst.com/instagram" target="_blank" name="carefirst instagram"><img title="Follow us on Instagram" alt="Follow us on Instagram" src="http://www.carefirst.com/enewsletters/images/social/instagram.png" height="28" border="0" width="28"/></a></td>
                                 </tr>
                              </tbody>
                           </table>
                        </td>
                     </tr>
                     <tr>
                        <td height="10"></td>
                     </tr>
                     <!-- Unsubscribe START-->
                     
                     <!-- Unsubscribe END-->
                     <tr>
                        <td height="10"></td>
                     </tr>
                     <!-- Location START-->
                     <tr>
                        <td align="center" class="one-column card" style="font-size:11px;padding:0px 35px;">
                           <p class="small-font">CareFirst BlueCross BlueShield, Canton Crossing, 1501 S. Clinton Street, Baltimore, MD 21224</p>
                        </td>
                     </tr>
                     <!-- Location END-->
                     <!-- Card Breaker BEGIN-->
                     <tr>
                        <td height="20"></td>
                     </tr>
                     <!-- Card Breaker END-->
                  </tbody>
               </table>
               <!--[if (gte mso 9)|(IE)]>
				</td>
         		</tr>
            	</table>
               <![endif]-->
      </div>
   </body>
</html>
	</xsl:template>
</xsl:stylesheet>