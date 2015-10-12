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

    transaction name: 'SRI Event' do
      learningEventData = {  sensorId: "com.load.performance.oct",
          apiKey: "XjWBleCrSeya9h9_IozgnA",
          event: {
          iType: "OutcomeEvent",
          context: "http://purl.imsglobal.org/ctx/caliper/v1/OutcomeEvent",
          type: "http://purl.imsglobal.org/caliper/v1/OutcomeEvent",
          actor: {
          iType: "SoftwareApplication",
          id: "http://scholastic.com/apps/sri/v1",
          type: "http://purl.imsglobal.org/caliper/v1/SoftwareApplication",
          name: "SRI",
          dateModified: 0,
          description: 0,
      properties: 0,
      dateCreated: 0
      },
          action: "graded",
          object: {
          id: "6plk4njn0uuqhrs04n6d0bf3_v8q9qq0",
          type: "http://purl.imsglobal.org/caliper/v1/Attempt",
          name: "SRI",
      dateCreated: 0,
          dateModified: 0,
          count: 1,
          startedAtTime: 1442954420958,
          endedAtTime: 1442954420958,
          duration: 0,
      description: 0,
      properties: 0,
      actorId: "userId",
          assignableId: 0
      },
          target: 0,
      generated: {
          iType: "SRIQuizResult",
          id: "6plk4njn0uuqhrs04n6d0bf3_v8q9qq0",
          type: "http://purl.imsglobal.org/caliper/v1/Result",
          name: "SRI",
      dateCreated: 0,
          dateModified: 0,
          lexileMeasure: 0,
          normalScore: 0,
          penaltyScore: 0,
          extraCreditScore: 0,
          totalScore: 0,
          curvedTotalScore: 0,
          curveFactor: 0,
          comment: "SRI",
      scoredBy: 0,
      applicationId: "SRI",
          siteId: 0,
      quizId: 0,
      gradeLevel: 5,
      startLexileScore: 100,
          endLexileScore: 200,
          sumCorrect: 20,
          sumIncorrect: 5,
          sumSkipped: 3,
          startSigma: 10,
          endSigma: 20,
          state: 0,
      description: 0,
      properties: 0,
      actorId: "userId",
          assignableId: 0
      },
          startedAtTime: 0,
          endedAtTime: 0,
          duration: 0,
      edApp: {
          iType: "SoftwareApplication",
          id: "http://scholastic.com/apps/sri/v1",
          type: "http://purl.imsglobal.org/caliper/v1/SoftwareApplication",
          name: "SRI",
      dateModified: 0,
          description: "SRI",
      properties: 0,
      dateCreated: 0
      },
          group: "SRI",
      }
      }

      put name: 'Add learning event',
          # url: "http://caliper-intellifylearning-com-9qaeszlip931.runscope.net/v1/learningevent",
          url: "https://dev1.intellifylearning.com/v1custom/eventdata",
          raw_body: learningEventData.to_json do
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