function stop454
	docker container stop "$(docker container ls | grep cs454 | awk '{print $1}')"
end
