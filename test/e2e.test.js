const fetch = require("node-fetch");

it('gets an http response', async () => {
  response = await fetch("http://nginx/");

  expect(response.ok).toBeTruthy();
  expect(await response.text()).toContain("Welcome to nginx!");
});
