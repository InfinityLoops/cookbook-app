var recipeTemplate = document.querySelector('#recipe-card');
var recipeRowElement = document.querySelector('.row');

axios.get("http://localhost:3000/api/recipes").then(function(response) {
  var recipes = response.data;
  
  recipes.forEach(function(recipe) {
    var recipeClone = recipeTemplate.content.cloneNode(true);

    recipeClone.querySelector(".card-title").innerText = recipe.title;
    recipeClone.querySelector(".chef").innerText = recipe.chef;
    recipeClone.querySelector(".prep-time").innerText = recipe.formatted.prep_time;
    recipeClone.querySelector(".card-img-top").src = recipe.image_url;


    recipeRowElement.appendChild(recipeClone);
  });
});


