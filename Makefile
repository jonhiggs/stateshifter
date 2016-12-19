PLUGINS := $(wildcard plugins/linux/*)

start: redis

redis:
	docker run -d \
		-p 6379:6379 \
		redis

update: ${PLUGINS}
	@for plugin in $^; do \
	  $$plugin > /dev/null; \
	done
