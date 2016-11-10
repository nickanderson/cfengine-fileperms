POLICY_ROOT=/var/cfengine/masterfiles
DEPLOY_DIR=$(POLICY_ROOT)/services/fileperms

install:
	# Deploy policy to the correct location
	mkdir -p $(DEPLOY_DIR)
	cp -R policy/* $(DEPLOY_DIR)
	cp -R data $(DEPLOY_DIR)
	find $(DEPLOY_DIR) -type f | xargs chmod 600

uninstall:
	# Remove deployed policy
	rm -rf $(DEPLOY_DIR)
