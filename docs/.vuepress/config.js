module.exports = {
    extend: '@vuepress-theme-default',

    title: 'Circo Igapó',
    description: 'Elias Rod',
    base: '/',
    dest: 'public',
    
    themeConfig: {
      smoothScrool: true,
      nav: [
         { text: 'Shows', link: '/shows/'},
         { text: 'Online workshops', link: '/workshops/'},
         { text: 'webhat', link: '/webhat/'}
      ]
    },
    
    head: [
      ['link', { rel: "stylesheet", media: "screen", href: "https://fontlibrary.org/face/circus", type: "text/css"}
      ]
    ]
}
