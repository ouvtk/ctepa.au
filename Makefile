build:
	docker run \
	--volume="$(PWD):/srv/jekyll" \
	--volume="$(PWD)/_site:/srv/jekyll/_site" \
	jekyll/builder:latest \
	/bin/bash -c "chmod -R 777 /srv/jekyll && jekyll build --future"

serve:
	docker run --rm \
	--volume="$(PWD):/srv/jekyll" \
	--publish [::1]:4000:4000 \
	jekyll/jekyll \
	jekyll serve --draft

shell:
	docker run --rm --interactive \
	--volume="$(PWD):/srv/jekyll" \
	--publish [::1]:4000:4000 \
	jekyll/jekyll \
	bash