function sendEmail() {
  Email.send({
    Host: "smtp.gmail.com",
    Username: "abhifloyer@gmail.com",
    Password: "nahimilegatujhe",
    To: "chinrust@gmail.com",
    From: "abhifloyer@gmail.com",
    Subject: "hello",
    Body: "Hello",
  }).then((message) => alert("mail sent successfully"));
}


795da72e-5161-4641-b82f-7a35a442096d