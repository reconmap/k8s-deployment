SHELL:=bash
deploy:
	@for file in definitions/*.yml; do \
		echo Applying $$file...; \
		kubectl apply -f $$file; \
	done

clean:
	@for file in definitions/*.yml; do \
		echo Deleting $$file...; \
		kubectl delete -f $$file; \
	done

convert:
	kompose convert -f ../api/docker-compose.yml -o generated

