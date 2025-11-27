document.getElementById("employeeForm").addEventListener("submit", function(event){
    event.preventDefault();

    const name = document.getElementById("name").value;
    const age = document.getElementById("age").value;
    const gender = document.querySelector('input[name="gender"]:checked').value;
    const experience = document.getElementById("experience").value;
    const email = document.getElementById("email").value;

    const tr = document.createElement("tr");
    tr.innerHTML = `
        <td>${name}</td>
        <td>${age}</td>
        <td>${gender}</td>
        <td>${experience}</td>
        <td>${email}</td>
    `;

    document.getElementById("employeeTable").appendChild(tr);
    document.getElementById("employeeForm").reset();
});
