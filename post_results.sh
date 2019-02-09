#!/bin/bash
json="
{\"appLinkName\":\"jenkinsBuildStatus\",
    \"origin\":\"source\",
    \"fields\":
       {\"id\":\"$BUILD_NUMBER\",
        \"title\":\"Build $BUILD_NUMBER completed with status $3\",
        \"status\":\"New\",
        \"priority\":\"major\",
        \"created_by\":\"vijay\",
        \"assigned_to\":\"vijay\",
        \"linked_story_id\":null,
        \"created_time\":\"07-12-2018 06:34:44\",
        \"modified_time\":\"07-12-2018 06:34:44\",
        \"BUILD_NUMBER\":\"$BUILD_NUMBER\",
        \"BUILD_ID\":\"$BUILD_ID\",
        \"BUILD_DISPLAY_NAME\":\"$BUILD_DISPLAY_NAME\",
        \"JOB_NAME\":\"$JOB_NAME\",
        \"JOB_BASE_NAME\":\"$JOB_BASE_NAME\",
        \"BUILD_TAG\":\"$BUILD_TAG\",
        \"EXECUTOR_NUMBER\":\"$EXECUTOR_NUMBER\",
        \"NODE_NAME\":\"$NODE_NAME\",
        \"NODE_LABELS\":\"$NODE_LABELS\",
        \"WORKSPACE\":\"$WORKSPACE\",
        \"JENKINS_HOME\":\"$JENKINS_HOME\",
        \"JENKINS_URL\":\"$JENKINS_URL\",
        \"BUILD_URL\":\"$BUILD_URL\",
        \"JOB_URL\":\"$JOB_URL\",
        \"GIT_COMMIT\":\"$GIT_COMMIT\",
        \"GIT_PREVIOUS_COMMIT\":\"$GIT_PREVIOUS_COMMIT\",
        \"GIT_PREVIOUS_SUCCESSFUL_COMMIT\":\"$GIT_PREVIOUS_SUCCESSFUL_COMMIT\",
        \"GIT_BRANCH\":\"$GIT_BRANCH\",
        \"GIT_LOCAL_BRANCH\":\"$GIT_LOCAL_BRANCH\",
        \"GIT_URL\":\"$GIT_URL\",
        \"GIT_COMMITTER_NAME\":\"$GIT_COMMITTER_NAME\",
        \"GIT_AUTHOR_NAME\":\"$GIT_AUTHOR_NAME\",
        \"GIT_COMMITTER_EMAIL\":\"$GIT_COMMITTER_EMAIL\",
        \"GIT_AUTHOR_EMAIL\":\"$GIT_AUTHOR_EMAIL\"
        }}"
echo "Send JSON: $json"
curl \
--header "Content-Type: application/json;charset=UTF-8" -X POST \
-d "$json" \
 http://connectall:8090/connectall/api/2/postRecord?apikey=c3509457-9b91-4c3f-ad46-68d3e5284adc