let main = document.querySelector("main")

let boton = document.querySelector("button")

let menu = document.querySelector("nav")

boton.addEventListener("click", () => { 
    if (menu.className == "cerrado")    
        menu.className = "abierto"
    else
        menu.className = "cerrado"
})


