APIARY_API := veeqo

apiary.apib: clean
	@echo "Transcluding API Blueprint"
	@hercule api.md -o apiary.apib

clean:
	@echo "Cleaning"
	@rm -fr apiary.apib

preview: apiary.apib
	@apiary preview

publish: apiary.apib
	@echo "Uploading blueprint to Apiary"
	@apiary publish --api-name=$(APIARY_API)

install:
	@gem install apiaryio
	@npm install -g hercule
