### qb-armitageplushies
##CUSTOM PLUSHIES QB CORE FRAMEWORK BASED FOR GTAV/FIVEM


> To make your cat cafe QBCORE ARMITAGE script work and test it, there are a few additional steps you need to take:

``` 
Ensure that you have the necessary dependencies: QB-TARGETING or basic QB resources should work.
 Make sure you have the QBcore framework properly installed on your FiveM server. Follow the installation instructions provided by the QBcore documentation to set it up correctly.

Set up the resource: Create a new RESOURCE FOLDER for your ARMITAGE cafe plushie script. This folder should contain all the necessary files for your script, including the server.lua file and the stream folder with the plushie model files. Make sure the resource folder is placed in the resources folder of your FiveM server.

Add the resource to your server.cfg: Open your server.cfg file and add the name of your cat cafe plushie script resource to the start section. For example: start your_plushie_script.

Start/restart your FiveM server: Save the changes to the server.cfg file and start or restart your FiveM server. This will load your cat cafe plushie script as a resource.

Test the script: Join your FiveM server and visit the stupid armitage  location in the game. Interact with the plushies to see if they work as intended. You can also check the SERVER CONSOLE for any error messages related to your script or RUNTIME ERRORS etc. CHECK MS USAGE ALSO TRY TO KEEP IT LOW MS.
```

### ABOUT THE LUA TABLE IN THIS SCRIPT: (UNEDITED)
```
## __resource.lua: This file is required and serves as the resource manifest file. It defines the resources used by your script.

__config.lua, manifestfx.lua all that garbage.. 

plushie_model_name_1.ydr: This is the .ydr model file for Plushie 1. Replace plushie_model_name_1 with the actual name of your plushie model file.

plushie_model_name_2.ydr: This is the .ydr model file for Plushie 2. Replace plushie_model_name_2 with the actual name of your plushie model file.

plushie_model_name_3.ydr: This is the .ydr model file for Plushie 3. Replace plushie_model_name_3 with the actual name of your plushie model file.

You may have more .ydr model files depending on the number of plushie types you have and their corresponding models. Make sure to place the correct .ydr model files in the stream folder and adjust the file names accordingly.

Remember to include the necessary stream folder information in your resource manifest file (__resource.lua) to ensure the model files are loaded properly.

This outline should give you a general idea of how the stream folder structure should look for your ARMITAGE QBcore plushie script. Adjust the structure and file names as needed based on your specific setup.
```

### EDITING AND ADDING THIS SCRIPT .YDR FILES FOR PLUSHIES

## To incorporate multiple plushie model files into the stream folder, you can follow these steps:

```
Create a folder named stream within your resource directory if it doesn't exist already.

Place your .ydr model files for the plushies inside the stream folder. Make sure to rename them according to the instructions you provided. For example, if you have three plushie models named plushie_model_name_1.ydr, plushie_model_name_2.ydr, and plushie_model_name_3.ydr, place them in the stream folder.

Update your resource.lua file to include the plushie model files in the files section. Here's an example:
```

```lua
-- Resource Metadata
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua',
}

files {
    'stream/plushie_model_name_1.ydr',
    'stream/plushie_model_name_2.ydr',
    'stream/plushie_model_name_3.ydr',
}

data_file 'DLC_ITYP_REQUEST' 'stream/cat_cafe.ytyp'
```
```
Replace plushie_model_name_1.ydr, plushie_model_name_2.ydr, and plushie_model_name_3.ydr with the actual names of your plushie model files.

Save the changes to your resource.lua file.

By following these steps, the plushie model files will be included in the resource's stream folder, allowing them to be streamed and loaded in the game.

Please note that the actual names and paths may vary depending on your specific setup and file organization.
```

> If you have any further questions or need additional assistance, feel free to ask!

CREATED BY KEYS <3
