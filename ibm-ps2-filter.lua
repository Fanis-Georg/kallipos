function Image(img)
    if img.classes:find('ibm-ps2-filter',1) then
      local f = io.open("paradoteo6/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.id)
      local content = "> " .. caption .. "  \n>" .. "Θεοφάνης Γεωργιτσόπουλος:" .. name .. "\nΠ2018004:" .. am
      return pandoc.RawInline('markdown',content)
    end
end
