function sendEmail() {
  Email.send({
    SecureToken: "13b95cff-a579-4f75-bec8-e30a58fcaeec",
    To: "abhifloyer@gmail.com",
    From: document.getElementById("s_email").value,
    Subject: document.getElementById("s_subject").value,
    Body: document.getElementById("s_body").value,
  }).then((message) => alert(message));
  //window.open("https://www.instagram.com");
}
// function bleh{
//   window.open("https://www.instagram.com", '_blank');
// }
