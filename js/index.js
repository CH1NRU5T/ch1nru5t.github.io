function sendEmail() {
  Email.send({
    SecureToken: "13b95cff-a579-4f75-bec8-e30a58fcaeec",
    To: "abhifloyer@gmail.com",
    From: document.getElementById("s_email").value,
    Subject: document.getElementById("s_subject").value,
    Body: document.getElementById("s_body").value,
  }).then((message) => alert(message));
}

// 795da72e - 5161 - 4641 - b82f - 7a35a442096d
// 2a4c53b5 - 41df - 4bcf - 9e05 - 656d03432bd8
// fa2e515c - 6c84 - 4c1c - b886 - 1bef7d190c66
// 13b95cff-a579-4f75-bec8-e30a58fcaeec
