require 'ruby-jmeter'

test do
  threads count: 10, duration: 60, continue_forever: true do
    # constant delay of 1 seconds with variance up to 5 seconds
    think_time 1000, 4000
    header [
               { name: 'Content-Type', value: 'application/json' }
           ]

    transaction name: 'Intellify About' do
      visit name: 'About Resource', url: 'https://dev1.intellifylearning.com/about' do
        with_xhr
      end
    end

    transaction name: 'R180 Segment Started Event' do
      R180_SegmentStarted_EventData = {  sensorId: "com.load.r180.performace",
          apiKey: "XjWBleCrSeya9h9_IozgnA",
          event: {
          iType: "LrsSegmentEvent",
          context: "http: //scholastic.com/ctx/v1/SegmentEvent",
          type: "http: //scholastic.com/common/v1/SegmentEvent",
          actor: {
          iType: "ScholasticPerson",
          id: "%{personId}",
          type: "null",
      name: "null",
      dateModified: 0,
          applicationId: "null",
      siteId: "h900000031",
          jvmId: "r180u-app01",
          personId: "null",
      firstName: "null",
      lastName: "null",
      gradeLevel: "null",
      classId: "null",
      roles: "null",
      userType: "null",
      userState: "null",
      userStatus: "null",
      description: "null",
      properties: "null",
      dateCreated: 0
      },
      action: "SEGMENT_STARTED",
          object: {
          id: "5510b7a84cd4497bb34ae6d9c6ae33b2",
          type: "http: //scholastic.com/common/v1/SegmentEntity",
          name: "%{segmentName}",
          dateModified: 0,
          applicationId: "null",
      siteId: "h900000031",
          jvmId: "r180u-app01",
          stageId: "null",
      classId: "null",
      description: "null",
      properties: "null",
      dateCreated: 0
      },
          target: "null",
      generated: "null",
      startedAtTime: 1442866576487,
          endedAtTime: 0,
          duration: "null",
      edApp: {
          iType: "SoftwareApplication",
          id: "http: //scholastic.com/apps/r180u/v1",
          type: "http: //purl.imsglobal.org/caliper/v1/SoftwareApplication",
          name: "null",
      dateModified: 0,
          description: "null",
      properties: "null",
      dateCreated: 0
      },
          group: "null",
      applicationId: "R180U",
          siteId: "h900000031",
          sessionId: "null"
      }
      }



      put name: 'Add Segment Started event',
          # url: "http://caliper-intellifylearning-com-9qaeszlip931.runscope.net/v1/learningevent",
          url: "https://dev1.intellifylearning.com/v1custom/eventdata",
          raw_body: R180_SegmentStarted_EventData.to_json do
        with_xhr
      end
    end


  transaction name: 'R180 Segment Entered Event' do

    R180_SegmentEntered_EventData = {  sensorId: "com.load.r180.performace",
                                       apiKey: "XjWBleCrSeya9h9_IozgnA",

                                       event: {
                                           iType: "LrsSegmentEvent",
                                           context: "http://scholastic.com/ctx/v1/SegmentEvent",
                                           type: "http://scholastic.com/common/v1/SegmentEvent",
                                           actor: {
                                               iType: "ScholasticPerson",
                                               id: "%{personId}",
                                               type: "null",
                                               name: "null",
                                               dateModified: 0,
                                               applicationId: "null",
                                               siteId: "h900000031",
                                               jvmId: "r180u-app01",
                                               personId: "null",
                                               firstName: "null",
                                               lastName: "null",
                                               gradeLevel: "null",
                                               classId: "null",
                                               roles: "null",
                                               userType: "null",
                                               userState: "null",
                                               userStatus: "null",
                                               description: "null",
                                               properties: "null",
                                               dateCreated: 0
                                           },
                                           action: "SEGMENT_ENTERED",
                                           object: {
                                               id: "66 kguboia08294hrs6kzzzzz_v8q9qq0",
                                               type: "http://scholastic.com/common/v1/SegmentEntity",
                                               name: "%{segmentName}",
                                               dateModified: 0,
                                               applicationId: "null",
                                               siteId: "h900000031",
                                               jvmId: "r180u-app01",
                                               stageId: "B",
                                               classId: "null",
                                               description: "null",
                                               properties: "null",
                                               dateCreated: 0
                                           },
                                           target: "null",
                                           generated: "null",
                                           startedAtTime: 1443471376487,
                                           endedAtTime: 0,
                                           duration: "null",
                                           edApp: {
                                               iType: "SoftwareApplication",
                                               id: "http://scholastic.com/apps/r180u/v1",
                                               type: "http://purl.imsglobal.org/caliper/v1/SoftwareApplication",
                                               name: "null",
                                               dateModified: 0,
                                               description: "null",
                                               properties: "null",
                                               dateCreated: 0
                                           },
                                           group: "null",
                                           applicationId: "R180U",
                                           siteId: "h900000031",
                                           sessionId: "%{sessionId}"
                                       }
    }


    put name: 'Add Segment Entered event',
        # url: "http://caliper-intellifylearning-com-9qaeszlip931.runscope.net/v1/learningevent",
        url: "https://dev1.intellifylearning.com/v1custom/eventdata",
        raw_body: R180_SegmentEntered_EventData.to_json do
      with_xhr
    end
  end


transaction name: 'R180 Segment Exited Event' do


  R180_SegmentExitedEventData = { sensorId: "com.load.r180.performace",
                                  apiKey: "XjWBleCrSeya9h9_IozgnA",

                                  event: {
                                      iType: "LrsSegmentEvent",
                                      context: "http://scholastic.com/ctx/v1/SegmentEvent",
                                      type: "http://scholastic.com/common/v1/SegmentEvent",
                                      actor: {
                                          iType: "ScholasticPerson",
                                          id: "%{personId}",
                                          type: "null",
                                          name: "null",
                                          dateModified: 0,
                                          applicationId: "null",
                                          siteId: "h900000031",
                                          jvmId: "r180u-app01",
                                          personId: "null",
                                          firstName: "null",
                                          lastName: "null",
                                          gradeLevel: "null",
                                          classId: "null",
                                          roles: "null",
                                          userType: "null",
                                          userState: "null",
                                          userStatus: "null",
                                          description: "null",
                                          properties: "null",
                                          dateCreated: 0
                                      },
                                      action: "SEGMENT_EXITED",
                                      object: {
                                          id: "66kguboia08294hrs6kzzzzz_v8q9qq0",
                                          type: "http://scholastic.com/common/v1/SegmentEntity",
                                          name: "%{segmentName}",
                                          dateModified: 0,
                                          applicationId: "null",
                                          siteId: "h900000031",
                                          jvmId: "r180u-app01",
                                          stageId: "B",
                                          classId: "null",
                                          description: "null",
                                          properties: "null",
                                          dateCreated: 0
                                      },
                                      target: "null",
                                      generated: "null",
                                      startedAtTime: 1443475456487,
                                      endedAtTime: 0,
                                      duration: "null",
                                      edApp: {
                                          iType: "SoftwareApplication",
                                          id: "http://scholastic.com/apps/r180u/v1",
                                          type: "http://purl.imsglobal.org/caliper/v1/SoftwareApplication",
                                          name: "null",
                                          dateModified: 0,
                                          description: "null",
                                          properties: "null",
                                          dateCreated: 0
                                      },
                                      group: "null",
                                      applicationId: "R180U",
                                      siteId: "h900000031",
                                      sessionId: "%{sessionId}"
                                  }
  }


  put name: 'Add Segment Exited event',
      # url: "http://caliper-intellifylearning-com-9qaeszlip931.runscope.net/v1/learningevent",
      url: "https://dev1.intellifylearning.com/v1custom/eventdata",
      raw_body: R180_SegmentExitedEventData.to_json do
    with_xhr
  end
end


transaction name: 'R180 Segment Completed Event' do


  R180_SegmentCompleted_EventData = { sensorId: "com.load.r180.performace",
                                      apiKey: "XjWBleCrSeya9h9_IozgnA",
                                      event: {
                                          iType: "LrsSegmentEvent",
                                          context: "http://scholastic.com/ctx/v1/SegmentEvent",
                                          type: "http://scholastic.com/common/v1/SegmentEvent",
                                          actor: {
                                              iType: "ScholasticPerson",
                                              id: "%{personId}",
                                              type: "null",
                                              name: "null",
                                              dateModified: 0,
                                              applicationId: "null",
                                              siteId: "h900000031",
                                              jvmId: "r180u-app01",
                                              personId: "null",
                                              firstName: "null",
                                              lastName: "null",
                                              gradeLevel: "null",
                                              classId: "null",
                                              roles: "null",
                                              userType: "null",
                                              userState: "null",
                                              userStatus: "null",
                                              description: "null",
                                              properties: "null",
                                              dateCreated: 0
                                          },
                                          action: "SEGMENT_COMPLETED",
                                          object: {
                                              id: "5510b7a84cd4497bb34ae6d9c6ae33b2",
                                              type: "http://scholastic.com/common/v1/SegmentEntity",
                                              name: "%{segmentName}",
                                              dateModified: 0,
                                              applicationId: "null",
                                              siteId: "h900000031",
                                              jvmId: "r180u-app01",
                                              stageId: "null",
                                              classId: "null",
                                              description: "null",
                                              properties: "null",
                                              dateCreated: 0
                                          },
                                          target: "null",
                                          generated: "null",
                                          startedAtTime: 1442956908501,
                                          endedAtTime: 0,
                                          duration: "null",
                                          edApp: {
                                              iType: "SoftwareApplication",
                                              id: "http://scholastic.com/apps/r180u/v1",
                                              type: "http://purl.imsglobal.org/caliper/v1/SoftwareApplication",
                                              name: "null",
                                              dateModified: 0,
                                              description: "null",
                                              properties: "null",
                                              dateCreated: 0
                                          },
                                          group: "null",
                                          applicationId: "R180U",
                                          siteId: "h900000031",
                                          sessionId: "null"
                                      }
  }

  put name: 'Add Segment Completed event',
      # url: "http://caliper-intellifylearning-com-9qaeszlip931.runscope.net/v1/learningevent",
      url: "https://dev1.intellifylearning.com/v1custom/eventdata",
      raw_body: R180_SegmentCompleted_EventData.to_json do
    with_xhr
  end
end
end
  #
  # Using JMeter-plugins at Google code
  #   http://code.google.com/p/jmeter-plugins
  #
  latencies_over_time 'Response Latencies Over Time'
  response_codes_per_second 'Response Codes per Second'
  response_times_distribution 'Response Times Distribution'
  response_times_over_time 'Response Times Over Time'
  response_times_percentiles 'Response Times Percentiles'
  transactions_per_second 'Transactions per Second'

  # end.run(
  #   path: '/Users/pnayak/Tools/apache-jmeter-2.11/bin/',
  #   file: 'event_test.jmx',
  #   log: 'jmeter.log',
  #   jtl: 'results.jtl')
end.jmx(file: $outputJMXFile)