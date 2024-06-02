function highlightSelectedAnswer(radio){

    const answers = radio.parentNode.parentNode.querySelectorAll('.answer')

     answers.forEach(answer => {
        answer.style.backgroundColor = 'white';
     });

    console.log("Jebać ci matke")
    if(radio.checked){
        radio.parentNode.style.backgroundColor = '#d1d1d1';
    }
    else{
        radio.parentNode.style.backgroundColor = 'white';
    }

}