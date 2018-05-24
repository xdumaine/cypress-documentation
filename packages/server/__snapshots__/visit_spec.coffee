exports['e2e visit low response timeout passes 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_spec.coffee)                                                        │
  │ Searched:   cypress/integration/visit_spec.coffee                                              │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_spec.coffee...                                                            (1 of 1) 


  visits
    ✓ scrolls automatically to div with id=foo
    ✓ can load an http page with a huge amount of elements without timing out
    ✓ can load a local file with a huge amount of elements without timing out
    issue #225: hash urls
      ✓ can visit a hash url and loads
      ✓ can visit the same hash url and loads
      ✓ can visit a different hash url and loads
    issue #230: User Agent headers
      ✓ submits user agent on cy.visit
      ✓ submits user agent on page load
      ✓ submits user agent on cy.request
    issue #255: url with like two domain
      ✓ passes
    issue #272: responses which are never ended still send valid html
      ✓ handles no response errors on the initial visit
      ✓ handles no response errors when not initially visiting
    issue #309: request accept header not set
      ✓ sets accept header to text/html,*/*


  13 passing


  (Results)

  ┌─────────────────────────────────┐
  │ Tests:        13                │
  │ Passing:      13                │
  │ Failing:      0                 │
  │ Pending:      0                 │
  │ Skipped:      0                 │
  │ Screenshots:  0                 │
  │ Video:        true              │
  │ Duration:     X seconds         │
  │ Spec Ran:     visit_spec.coffee │
  └─────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ visit_spec.coffee                            Xs       13       13        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs       13       13        -        -        -  

`

exports['e2e visit low response timeout fails when network connection immediately fails 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_http_network_error_failing_spec.coffee)                             │
  │ Searched:   cypress/integration/visit_http_network_error_failing_spec.coffee                   │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_http_network_error_failing_spec.coffee...                                 (1 of 1) 


  when network connection cannot be established
    1) fails


  0 passing
  1 failing

  1) when network connection cannot be established fails:
     CypressError: cy.visit() failed trying to load:

http://localhost:16795/

We attempted to make an http request to this URL but the request failed without a response.

We received this error at stack trace line

  > Error: connect ECONNREFUSED 127.0.0.1:16795

Common situations why this would fail:
  - you don't have internet access
  - you forgot to run / boot your web server
  - your web server isn't accessible
  - you have weird network configuration settings on your computer

The stack trace for this error is:

Error: connect ECONNREFUSED 127.0.0.1:16795
    at stack trace line
    at stack trace line
    at stack trace line

      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line




  (Results)

  ┌────────────────────────────────────────────────────────────┐
  │ Tests:        1                                            │
  │ Passing:      0                                            │
  │ Failing:      1                                            │
  │ Pending:      0                                            │
  │ Skipped:      0                                            │
  │ Screenshots:  1                                            │
  │ Video:        true                                         │
  │ Duration:     X seconds                                    │
  │ Spec Ran:     visit_http_network_error_failing_spec.coffee │
  └────────────────────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/when network connection cannot be established -- fails.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ visit_http_network_error_failing_spec…       Xs        1        -        1        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        1        -        1        -        -  

`

exports['e2e visit low response timeout fails when server responds with 500 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_http_500_response_failing_spec.coffee)                              │
  │ Searched:   cypress/integration/visit_http_500_response_failing_spec.coffee                    │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_http_500_response_failing_spec.coffee...                                  (1 of 1) 


  when server response is 500
    1) fails


  0 passing
  1 failing

  1) when server response is 500 fails:
     CypressError: cy.visit() failed trying to load:

http://localhost:3434/fail

The response we received from your web server was:

  > 500: Server Error

This was considered a failure because the status code was not '2xx'.

If you do not want status codes to cause failures pass the option: 'failOnStatusCode: false'
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line




  (Results)

  ┌───────────────────────────────────────────────────────────┐
  │ Tests:        1                                           │
  │ Passing:      0                                           │
  │ Failing:      1                                           │
  │ Pending:      0                                           │
  │ Skipped:      0                                           │
  │ Screenshots:  1                                           │
  │ Video:        true                                        │
  │ Duration:     X seconds                                   │
  │ Spec Ran:     visit_http_500_response_failing_spec.coffee │
  └───────────────────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/when server response is 500 -- fails.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ visit_http_500_response_failing_spec.…       Xs        1        -        1        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        1        -        1        -        -  

`

exports['e2e visit low response timeout fails when file server responds with 404 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_file_404_response_failing_spec.coffee)                              │
  │ Searched:   cypress/integration/visit_file_404_response_failing_spec.coffee                    │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_file_404_response_failing_spec.coffee...                                  (1 of 1) 


  when file server response is 404
    1) fails


  0 passing
  1 failing

  1) when file server response is 404 fails:
     CypressError: cy.visit() failed trying to load:

/static/does-not-exist.html

We failed looking for this file at stack trace line

/foo/bar/.projects/e2e/static/does-not-exist.html

The internal Cypress web server responded with:

  > 404: Not Found
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line




  (Results)

  ┌───────────────────────────────────────────────────────────┐
  │ Tests:        1                                           │
  │ Passing:      0                                           │
  │ Failing:      1                                           │
  │ Pending:      0                                           │
  │ Skipped:      0                                           │
  │ Screenshots:  1                                           │
  │ Video:        true                                        │
  │ Duration:     X seconds                                   │
  │ Spec Ran:     visit_file_404_response_failing_spec.coffee │
  └───────────────────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/when file server response is 404 -- fails.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ visit_file_404_response_failing_spec.…       Xs        1        -        1        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        1        -        1        -        -  

`

exports['e2e visit low response timeout fails when content type isnt html 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_non_html_content_type_failing_spec.coffee)                          │
  │ Searched:   cypress/integration/visit_non_html_content_type_failing_spec.coffee                │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_non_html_content_type_failing_spec.coffee...                              (1 of 1) 


  when content type is plain/text
    1) fails


  0 passing
  1 failing

  1) when content type is plain/text fails:
     CypressError: cy.visit() failed trying to load:

/static/hello.txt

The content-type of the response we received from this local file was:

  > text/plain

This was considered a failure because responses must have content-type: 'text/html'

However, you can likely use cy.request() instead of cy.visit().

cy.request() will automatically get and set cookies and enable you to parse responses.
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line




  (Results)

  ┌───────────────────────────────────────────────────────────────┐
  │ Tests:        1                                               │
  │ Passing:      0                                               │
  │ Failing:      1                                               │
  │ Pending:      0                                               │
  │ Skipped:      0                                               │
  │ Screenshots:  1                                               │
  │ Video:        true                                            │
  │ Duration:     X seconds                                       │
  │ Spec Ran:     visit_non_html_content_type_failing_spec.coffee │
  └───────────────────────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/when content type is plaintext -- fails.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ visit_non_html_content_type_failing_s…       Xs        1        -        1        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        1        -        1        -        -  

`

exports['e2e visit normal response timeouts fails when visit times out 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (visit_http_timeout_failing_spec.coffee)                                   │
  │ Searched:   cypress/integration/visit_http_timeout_failing_spec.coffee                         │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: visit_http_timeout_failing_spec.coffee...                                       (1 of 1) 


  when visit times out
    1) fails timeout exceeds pageLoadTimeout
    2) fails timeout exceeds timeout option


  0 passing
  2 failing

  1) when visit times out fails timeout exceeds pageLoadTimeout:
     CypressError: Timed out after waiting '1000ms' for your remote page to load.

Your page did not fire its 'load' event within '1000ms'.

You can try increasing the 'pageLoadTimeout' value in 'cypress.json' to wait longer.

Browsers will not fire the 'load' event until all stylesheets and scripts are done downloading.

When this 'load' event occurs, Cypress will continue running commands.
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line

  2) when visit times out fails timeout exceeds timeout option:
     CypressError: Timed out after waiting '500ms' for your remote page to load.

Your page did not fire its 'load' event within '500ms'.

You can try increasing the 'pageLoadTimeout' value in 'cypress.json' to wait longer.

Browsers will not fire the 'load' event until all stylesheets and scripts are done downloading.

When this 'load' event occurs, Cypress will continue running commands.
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line
      at stack trace line




  (Results)

  ┌──────────────────────────────────────────────────────┐
  │ Tests:        2                                      │
  │ Passing:      0                                      │
  │ Failing:      2                                      │
  │ Pending:      0                                      │
  │ Skipped:      0                                      │
  │ Screenshots:  2                                      │
  │ Video:        true                                   │
  │ Duration:     X seconds                              │
  │ Spec Ran:     visit_http_timeout_failing_spec.coffee │
  └──────────────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/when visit times out -- fails timeout exceeds pageLoadTimeout.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/when visit times out -- fails timeout exceeds timeout option.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ visit_http_timeout_failing_spec.coffee       Xs        2        -        2        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        2        -        2        -        -  

`
