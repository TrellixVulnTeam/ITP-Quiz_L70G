let eingabe = document.getElementById("passwortEingabe")
let button = document.getElementById("button-weiter")
let passwortError = document.getElementById("passwort")
let passwort = "admin"

let zaehler = 1

button.addEventListener("click", button_disable, false)

function button_disable() {
    if (eingabe.value === passwort && zaehler <= 3) {
        window.location = "index2.html"
    } else if (zaehler === 3) {
        window.location = "landingpage.html"
    } else {
        zaehler++
        passwortError.style.display = "inherit"
        passwortError.innerHTML = "Falsche Passworteingabe! Versuch " + zaehler + "/3:"
    }
}