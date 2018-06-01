const appendBlogPost = (response) => {
  $('form').remove()
  let blog_post = $('<article></article>').append(
    $(`<h1>${response.title}</h1>`),
    $(`<p>${response.article}</h1>`)
  )
  blog_post.appendTo($('main'))
}

const createNewPost = () => {
  let title = $('input[name=title]').val()
  let article = $('input[name=body]').val()
  let blog_post = {title: title, article: article}
  fetch('/api/v1/blog_posts', {
    method: 'POST',
    body: JSON.stringify(blog_post),
    headers: {
      'content-type': 'application/json'
    },
    mode: 'cors'
  })
  .then(response => response.json())
  .then(appendBlogPost)
}

const appendForm = () => {
  $('<form class="new-blog-form"><input type="text" name="title" /><input type="text" name="body"><input type="submit"/></form>')
  .appendTo($('main'))
  $('form').submit(function(event){
    event.preventDefault()
    createNewPost()
  })
}

$('.new-blog').click(appendForm)
