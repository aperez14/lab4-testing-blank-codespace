```bash
#!/bin/bash
```
#my first script

```bash
server_name=$(hostname)
```

By using `$()` we tell bash to actually interpret the command and then assign the value to our variable.

Now if we were to echo out the variable we would see the current hostname:

```bash
echo $server_name
```

## Adding your first function

As you already know after reading chapter 12, in order to create a function in bash you need to use the following structure:

```bash
function function_name() {
    your_commands
}
```
create a function that returns the current memory usage on our server:

```bash
function memory_check() {
    echo ""
	echo "The current memory usage on ${server_name} is: "
	free -h
	echo ""
}
```

Quick run down of the function:

* `function memory_check() {` - this is how we define the function
* `echo ""` - here we just print a new line
* `echo "The current memory usage on ${server_name} is: "` - here we print a small message and the `$server_name` variable
* `}` - finally this is how we close the function

Then once the function has been defined, in order to call it, just use the name of the function:

```bash
# Define the function
function memory_check() {
    echo ""
	echo "The current memory usage on ${server_name} is: "
	free -h
	echo ""
}

# Call the function
memory_check
```

## Adding more functions challenge

Before checking out the solution, I would challenge you to use the function from above and write a few functions by yourself.

The functions should do the following:

* Current Disk usage
* Current CPU usage
* Current RAM usage
* Check the exact Kernel version

Feel free to use google if you are not sure what commands you need to use in order to get that information.

Once you are ready, feel free to scroll down and check how we've done it and compare the results! 

Note that there are multiple correct ways of doing it!

## The sample script

Here's what the end result would look like:

```bash
#!/bin/bash

##
# BASH script that checks:
#   - Memory usage
#   - CPU load
#   - Number of TCP connections
#   - Kernel version
##

server_name=$(hostname)

function memory_check() {
    echo ""
	echo "Memory usage on ${server_name} is: "
	free -h
	echo ""
}

function cpu_check() {
    echo ""
	echo "CPU load on ${server_name} is: "
    echo ""
	uptime
    echo ""
}

function tcp_check() {
    echo ""
	echo "TCP connections on ${server_name}: "
    echo ""
	cat  /proc/net/tcp | wc -l
    echo ""
}

function kernel_check() {
    echo ""
	echo "Kernel version on ${server_name} is: "
	echo ""
	uname -r
    echo ""
}

function all_checks() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
}

all_checks
```

## Conclusion

Bash scripting is awesome! No matter if you are a DevOps/SysOps engineer, developer, or just a Linux enthusiast, you can use Bash scripts to combine different Linux commands and automate boring and repetitive daily tasks, so that you can focus on more productive and fun things!

>{notice} This was initially posted on [DevDojo.com](https://devdojo.com/bobbyiliev/introduction-to-bash-scripting)
