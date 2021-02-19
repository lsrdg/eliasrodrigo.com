module.exports = {
    extend: '@vuepress/theme-default',

    title: 'Circo Igapó',
    description: 'Elias Rod',
    base: '/',
    dest: 'public',
    
    themeConfig: {
      smoothScrool: true,
      nav: [
         { text: 'Shows', link: '/shows/'},
         { text: 'Online workshops', link: '/workshops/'},
         { text: 'Webhat', link: '/webhat/'},
         { text: 'Contact', link: '/contact/'}
      ]
    },
    
    head: [
      ['link', { rel: "stylesheet", media: "screen", href: "https://fontlibrary.org/face/circus", type: "text/css"}
      ]
    ]
}
