const QuizDB=[
    {
        question: "Q1: What is the range of short ?",
        a:"-128 to 127",
        b:"-32768 to 32767",
        c:"-2147483648 to 2147483647",
        d:"None of the mentioned",
        ans:"ans2"
    },
    
    {
        question: "Q2:  Which of these have highest precedence?",
        a:"()",
        b:"++",
        c:"*",
        d:">>",
        ans:"ans1"
    },
{
        question: "Q3: Which of the following is not an Enterprise Beans type?",
        a:"Doubleton",
        b:"Singleton",
        c:"Stateful",
        d:"Stateless",
        ans:"ans1"
},
{
        question: "Q4: Which attribute is used to specify initialization method?",
        a:"init",
        b:"init-method",
        c:"initialization",
        d:"initialization-method",
        ans:"ans2"
},
{
        question: "Q5:  Which attribute is used to specify destroy method? ",
        a:" destroy",
        b:"destroy-method",
        c:"destruction",
        d:"destruction-method",
        ans:"ans2"
}



];


const question= document.querySelector('.question');
const option1 = document.querySelector('#option1');
const option2 = document.querySelector('#option2');
const option3 = document.querySelector('#option3');
const option4 = document.querySelector('#option4');
const submit= document.querySelector('#submit');

const answers=document.querySelectorAll('.answer');

const showScore =document.querySelector('#showScore');

let questionCount=0;
let score=0;

const loadQuestion =() =>{

    const questionList = QuizDB[questionCount];
    question.innerText= questionList.question;
    
    option1.innerText =questionList.a;
    option2.innerText =questionList.b;
    option3.innerText =questionList.c;
    option4.innerText =questionList.d;
    
};

loadQuestion();


const getCheckAnswer =() =>{
    let answer;
    
    answers.forEach((curAnsElem) =>{
        if(curAnsElem.checked)
        {
            answer=curAnsElem.id;
            
        }
    });
    return answer;

};
const deselectAll =()=>{
    answers.forEach((curAnsElem)=> curAnsElem.checked =false);
}


submit.addEventListener('click',()=>{
    const checkedAnswer =getCheckAnswer();
    console.log(checkedAnswer);
    
    if(checkedAnswer === QuizDB[questionCount].ans){
        score++;
    };
    
    questionCount++;
    
    deselectAll();
    
    if(questionCount < QuizDB.length)
    {
        loadQuestion();
        
    }
    else
    {
        showScore.innerHTML=`
        <h3>Your Score  ${score}/${QuizDB.length}</h3>
        <form action=S-menu.jsp><button class="btn">Back to Menu</button></form>
        `;
        showScore.classList.remove('scoreArea');
    }
});

