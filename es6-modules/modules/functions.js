function sayHello(){
	alert("hello");
	log("hello");
}

function sayGoodBye(){
	alert("bye");
	log("bye");
}

function log(msg){
	console.log(msg);
}

export {sayHello, sayGoodBye}

// export {sayHello:sayHello, sayGoodBye:sayGoodBye}