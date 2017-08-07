PATH := $(CURDIR)/../bin:$(PATH)
export PATH

TEST_DIR     ?= $(CURDIR)
TEST_CASES   := $(sort $(wildcard $(TEST_DIR)/case/*))
TEST_OUTPUTS := ${TEST_CASES:$(TEST_DIR)/case/%=$(TEST_DIR)/out/%}


default : report

tests : clean $(TEST_OUTPUTS)

clean :
	@ cd "$(TEST_DIR)" && rm -rf out work pass fail

$(TEST_DIR)/out/% : $(TEST_DIR)/case/%
	@ cd "$(TEST_DIR)" && mkdir -p out pass fail "work/$*"
	@ printf "[test] %-40s ... " "$*"
	@ if ( cd "$(TEST_DIR)/work/$*" && env - PATH="$$PATH" $^ 2>&1 ) > "$@" ; then \
	    printf "pass\n" ; \
	    touch "pass/$*" ; \
	  else \
	    rc=$$? ; \
	    printf "fail\n" ; \
	    touch "fail/$*" ; \
	    exit $$rc ; \
	  fi

report : tests
	@ printf "[summary] %d/%d passing\n" 1>&2 \
	  `find "$(TEST_DIR)"/pass -type f -not -name \*.empty | wc -l` \
	  `find "$(TEST_DIR)"/case -type f | wc -l`

