return {
  s({ trig = 'e' }, { t('\\emph{'), i(1), t('}'), i(0)}),
  s({ trig = 'nc' }, {
    t('\\newcommand\\'), i(1, 'cmd_name'),
    t('{'), i(2, 'cmd_def'), t('}') }, i(0))
}, {
  s({ trig = 'hello latex' }, { t('Hello, \\LaTeX!')}),
  -- unsorted
  s({ trig = 'qn' }, fmta('<> = <>', { i(1), i(0) })),
  s({ trig = 'itm' }, { t('\\item') }),
  s({ trig = 'mt' }, fmta('\\(<>\\)<>', { i(1), i(0)})),
  s({ trig = 'mT' }, fmta([[
  \[
    <>
  \]<>
  ]], { i(1), i(0) })),
  s({ trig = 'evm' }, fmta([[
  \begin{<>}
    <>
  \end{<>}<>
  ]], { i(1), i(2), rep(1), i(0)})),
  s({ trig = 'ntg' }, {
    c(1, { t(''), t('\\ds') }),
    c(2, {
      t('\\int{'),
      sn(nil, { t('\\int_{'), i(1, 'low'), t('}^{'), i(2, 'up'), t('}{'), i(0) })
    }),
    i(3, 'function'), t('}'), i(0)
  })
}
