# Planning our application (计划)

	1.Answer questions（回答问题）
		- What are we building?（我们要建立什么）
		- Who are we building it for?（建给谁用）
		- What features do we need to have?（我们需要哪些方面）
	2.User Stories（用户故事）
	3.Model our Date（数据模型）
	4.Think through the pages we need in our app （考虑一下哪些页面是我们所需的）

## Questions
	1.What are we building? We are building a personal site. A place where we can blog, share examples of our work, and have people contact us.
	2. Who are we building it for? We are building it for ourselves, but also the community. Sharing what we are learning by  blogging is a great way to learn for ourselves, but we teach others in the process. Show potential employers that we know what we are doing .
	3. What features do we want to have?
		- Posts
			- Create / Edit / Destroy
			- Markdown
			- Syntax highlighting
			- Comments (Disqus)
		- Projects
			- Create / Edit / Destroy
		- Contact
			- Contact form
			- Sendgrid
		- User (Devise)

## User stories
  As a blank, I want to be able to blank, so that blank.
	- As a user, I want to be able to create posts so that I can share what I am learning on my blog.
	- As a user, I want to be able to edit & destroy posts, so that I can manage my blog.
	- As a user, I want to be able to write posts in markdown format so that it’s easy for me to write posts.
	- As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog.
	- As a user, I want to show the visitors and potential employers examples of my work, or stuff I’ve build.
	- As a user, I want to be able to have visitors contact me through a form on my site.

## Modeling our Data
	**Post**
		title:string
		content:string

	**Project**
		title:string
		description:text
		link:string

	**User**

## Think through the pages we need in our app
		- Home
		- Posts#index
		- Post#Show
		- Projects#index
		- Project#show
		- Contact
