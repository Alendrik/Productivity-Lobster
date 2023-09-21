# Productivity Lobster
- Sometimes, people organize, brainstorm, and work on ideas in discord servers. 
- Why not create a bot that helps manage those ideas and keep track of items?

## Command examples
> /add "topic" "category"
> /rm
> /addusr "usrname" "topic"

## Feature Brainstorming
- Hierarchy based (tree): No hardcoded categories/topics/options. Just files within files
- Tagging:
	- Each branch/leaf is tagged with metadata that enables optional functionality.
- Tagging based authentication and authorization:
	- Creator of project has rwm perms, aswell as admin rights to category
	- perms are just tags/roles.
- private/group/public tags:
	- **Use-case ex**: Sometimes, a project may be labeled private, so all tags and information may be hidden. 
		- However, authors can create public leafs that display desired information to without perms.
- Put on rpi connected to internet or host on glitch.com
	- Create DMZ to segment things away from it. Only use IPv6.
	- Set secret to an environment variable, DO NOT hardcode.

## Other Flavors
- Can be linked to GH repos/package directories (nim server bot)
