start: redis

redis:
	docker run -d \
		-p 6379:6379 \
		redis
