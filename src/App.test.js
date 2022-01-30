import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders learn react link", () => {
  render(<App />);
  const linkElement = screen.getByText(/There is always something to learn/i);
  expect(linkElement).toBeInTheDocument();
});
test("random test", () => {
  render(<App />);
  const linkElement = screen.getByText(/There is always something to learn/i);
});
