# MSc Data Science dissertation data download scripts

These scripts download data from Audi, Ford, Kitti and Udacity, Unity is synthetic and generated, but added as it will be used within this directory structure.  
The development is being carried out in two environments, City's camber server and Intel's DevCloud. Procedures to queue jobs are different on both platforms.  
Two queueing script templates are provided, and once copied to subdirectories, can be edited on City or DevCloud as the case may be.  
Once downloads are completed, additional scripts are required to extract steering angles from downloaded files.  
Once data is ready to be processed, top level directory can be simlynked to python scripts' folder e.g.  
```
$ ln -s ~/git/msc-dissertation-data ~/git/sdsandbox/datasets
```
**mechanical-turk** directory is for random image labelling, to locate rainy images within dataset.  
A few datasets are labelled by providers as "cloudy", so the most likely to contain rain.  
Otherwise, further processing is required to generate synthetic rain.  
