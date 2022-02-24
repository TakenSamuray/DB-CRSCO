const fields = document.querySelectorAll("[required]")

console.log(fields)



    function customValidation(event) {
        
        //eliminar o bubble
        event.preventDefault()

        const field = event.target

        //logica para verificar se existem erros
        function verifyErrors() { 
            let foundError = false;

            console.log(field.validity)

            
            for(let error in field.validity) {
                console.log(error)
                //se não for "customError", então verifica erro
                if( field.validity[error] && !field.validity.valid) {
                    foundError = error
                }
            }

            console.log(foundError)

            return foundError;
        }

        const error = verifyErrors()
        console.log("Error Exists: ", error)

        const spanError = field.parentNode.querySelector("span.error")

        if(error) {
           document.getElementById("name").focus();
           document.getElementById("name").blur();
           spanError.classList.add("active")
           spanError.innerHTML = "Campo Obrigatório *"
           spanError.style.backgroundColor = "#B22222"
            
        } else {
            spanError.classList.remove("active")
            spanError.innerHTML = ""
        }
 
    }
//invalid é um evento
for( const field of fields) {
     
    field.addEventListener("invalid", customValidation)
    field.addEventListener("blur", customValidation)
}




document.querySelector("form")
.addEventListener("submit", event => { 
    console.log("enviar o formulário")

    event.preventDefault()
})
