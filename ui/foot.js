import { marked } from 'marked';
import { gfmHeadingId } from 'marked-gfm-heading-id';
import Alpine from 'alpinejs'

window.Alpine = Alpine;
marked.setOptions({
  gfm: true,
  smartypants: true,
  langPrefix: "language-",
});

marked.use(gfmHeadingId());

document.addEventListener('alpine:init', () => {
  Alpine.data('helpers', () => ({
    marked,
    copy: copyTextToClipboard,
  }));
});

Alpine.start();

function fallbackCopyTextToClipboard(text) {
  var textArea = document.createElement("textarea");
  textArea.value = text;

  // Avoid scrolling to bottom
  textArea.style.top = "0";
  textArea.style.left = "0";
  textArea.style.position = "fixed";

  document.body.appendChild(textArea);
  textArea.focus();
  textArea.select();

  try {
    var successful = document.execCommand('copy');
    var msg = successful ? 'successful' : 'unsuccessful';
    console.log('Fallback: Copying text command was ' + msg);
  } catch (err) {
    console.error('Fallback: Oops, unable to copy', err);
  }

  document.body.removeChild(textArea);
}

function copyTextToClipboard(text) {
  if (!navigator.clipboard) {
    fallbackCopyTextToClipboard(text);
    return;
  }
  navigator.clipboard.writeText(text).then(function() {
    console.log('Async: Copying to clipboard was successful!');
  }, function(err) {
    console.error('Async: Could not copy text: ', err);
  });
}