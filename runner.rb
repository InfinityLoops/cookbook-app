require 'unirest'

# INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/recipes")
# puts JSON.pretty_generate(response.body)

# SHOW ACTION
# recipe_id = 1
# response = Unirest.get("http://localhost:3000/api/recipes/#{recipe_id}")
# puts JSON.pretty_generate(response.body)

# CREATE ACTION
 # runner_params = {
 #                  title: "baked squirrel",
 #                  chef: "Uncle billy joe bob",
 #                  ingredients: "roadkill",
 #                  directions: "walk out to road, pick up what ever is lying around, fry it",
 #                  prep_time: 90
 #                }
# response = Unirest.post(
#                         "http://localhost:3000/api/recipes", 
#                         parameters: runner_params
#                         )
# puts JSON.pretty_generate(response.body)

# UPDATE ACTION
recipe_id = 6
runner_params = {
                 title: "Mud Cake!!!"
                }

response = Unirest.patch(
                         "http://localhost:3000/api/recipes/#{recipe_id}",
                         parameters: runner_params
                        )

recipe_hash = response.body
puts JSON.pretty_generate(recipe_hash)












