# coding: utf-8
# ========================= init Section, Node =========================

s1 = Section.create(name: 'Tricking')
Node.create(name: '新手问题', summary: '...', section_id: s1.id)
Node.create(name: '精彩视频', summary: '...', section_id: s1.id)
Node.create(name: '教学', summary: '...', section_id: s1.id)
Node.create(name: '训练日记', summary: '...', section_id: s1.id)

s2 = Section.create(name: '极限运动')
Node.create(name: '跑酷', summary: '...', section_id: s2.id)
Node.create(name: 'XMA', summary: '...', section_id: s2.id)
Node.create(name: '双节棍', summary: '...', section_id: s2.id)
# s4 = Section.create(name: "分享")
# Node.create(name: 'Jobs', summary: '...', section_id: s4.id, id: 25)

s6 = Section.create(name: 'Tricking China')
Node.create(name: "公告", summary: '...', section_id: s6.id)
Node.create(name: "反馈", summary: '...', section_id: s6.id)
Node.create(name: 'NoPoint', summary: '...', section_id: s6.id, id: 61)

# SiteNode.create(name: "国内商业网站", sort: 100)
# SiteNode.create(name: "国外著名网站", sort: 99)
# SiteNode.create(name: "Ruby 社区网站", sort: 98)
# SiteNode.create(name: "技术博客", sort: 97)
# SiteNode.create(name: "Ruby 开源项目", sort: 96)
# SiteNode.create(name: "国内企业", sort: 95)
SiteNode.create(name: "其他", sort: 94)
