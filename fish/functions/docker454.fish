function docker454
	set dir (pwd)
	cd ~/Documents/cs454
	docker run -d --rm --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -p 8012:8012 -v "$(pwd)":/home/cs454 cs454
	cd $dir
end
