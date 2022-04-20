# How to Contribute
This is directed at the level of an influencer writing a blog

In "site" you will find static web files as an example blog site to perhaps 
help you get started, I found it on a site where you might like a better template: 
https://html.design/

Just make sure the root level contents have the index.html, the directory structure is kept the same, 
and it looks relatively similar to the structure within the "site" folder

This project is setup with simplicity in mind for a minimal develop environment.
For that reason we push directly into "production". 

No need to check out branches (feature or otherwise) or the like, 
just directly make changes in master on github and push them.

You can make static web changes directly in github, push them to production, 
and then you can watch the build finish and the website update. (May need to hard refresh and/or empty browser cache but 
that should be rare depending on the changes to html & js)

Changes can also be made directly to terraform (then push to master) 
and the build will pick up on any infrastructural errors. To undo these errors, 
simply undo what was done (look at a previous version of the project in github if necessary)
paste the previous version of the change and then push that.

If the build becomes red despite changing the code back and pushing contact me by email

If you need access to the project and the build reports (google cloud build) contact me by email

dumontjudea2@gmail.com

