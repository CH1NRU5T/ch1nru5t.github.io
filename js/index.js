function sendEmail() {
  Email.send({
    Host: "smtp.gmail.com",
    Username: "abhifloyer@gmail.com",
    Password: "nahimilegatujhe",
    To: "abhifloyer@gmail.com",
    From: "abhifloyer@gmail.com",
    Subject: "hello",
    Body: "Hello",
  }).then((message) => alert("mail sent successfully"));
}
