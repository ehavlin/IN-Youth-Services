function startIntro() {
    var intro = introJs();
    intro.setOptions({
        steps: [
          {
              intro: "Welcome the Department of Child Service's web tool for helping foster children who are transitioning into adulthood."
          },
          {
              element: document.querySelector('#navBar'),
              intro: "This is the navigation bar. You can use it to navigate through the different web pages pages."
          },
          {
              element: document.querySelector('#DivResource'),
              intro: "Here are some useful resources you can pursue."
          },
          {
              element: document.querySelector('#DivDocument'),
              intro: "And here are links to a few of the documents that you can upload to our server."
          },
          {
              element: document.querySelector('#contactFooter'),
              intro: "You can click here to contact us directly, or you can go to the support tab in the nav bar above."
          }

        ]
    });
    intro.start();
}
