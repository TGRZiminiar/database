// test.mjs
import data from "./mo2.json";
interface objectQuestion {
    question:string;
    correctAns:string;
}

let ansQ:objectQuestion[] = []
data.questions.forEach(elem => {
    ansQ.push({
        correctAns: String(elem.choices.find(choice => choice.is_expected === 1)),
        question: elem.question
    })
    // elem.question
});
console.log(ansQ)