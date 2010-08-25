" Align assignments in a range of text. Example:
" :3,23Align
function! AlignAssigns() range
lua << EOF
  local first      = vim.eval('a:firstline')
  local last       = vim.eval('a:lastline');
  local buffer     = vim.buffer()
  local assign_pat = '(.-)%s+([=>]+)%s+(.*)%s*$'
  local max        = 0

  -- build a table of the buffer line numbers in the range.
  local offsets = {first}
  while #offsets <= last - first do
    offsets[#offsets + 1] = offsets[#offsets] + 1
  end

  -- Get the length of the longest string before an assignment.
  for _, i in ipairs(offsets) do
    if buffer[i]:match(assign_pat) then
      local var = (buffer[i]:match(assign_pat))
      if var:len() > max then max = var:len() end
    end
  end

  -- Now align the assignments.
  for _, i in ipairs(offsets) do
    if buffer[i]:match(assign_pat) then
      local var, op, assign = buffer[i]:match(assign_pat)
      local spaces = max - var:len() + 1
      buffer[i] = var .. string.rep(" ", spaces) .. op .. " " .. assign
    end
  end
EOF
endfunction
command! -nargs=? -range Align <line1>,<line2>call AlignAssigns()
