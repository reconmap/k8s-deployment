SHELL:=bash
deploy:
	@for file in resources/*.yml; do \
		echo Applying $$file...; \
		kubectl apply -f $$file; \
	done

clean:
	@for file in resources/*.yml; do \
		echo Deleting $$file...; \
		kubectl delete -f $$file; \
	done

convert:
	kompose convert -f ../reconmap/docker-compose.yml --namespace=nonprod --with-kompose-annotation=false -o resources

