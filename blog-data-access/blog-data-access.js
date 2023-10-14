const baseURL = "http://localhost:3000/";

export function getAllPosts(){
	return axios.get(baseURL + "pages/")
		.then(resp => resp.data)
		.catch(errorHandler);
}

export function getPostById(id){
	return axios.get(baseURL + "pages/" + id)
		.then(resp => resp.data)
		.catch(errorHandler);
}

function errorHandler(err){
    console.log("ERROR (in blog-data-access):", err.message);
    throw new Error(err); // because we throw an error here, we can catch it in our components.
}