cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cancer-comorbidities-pancrea---primary:
    run: cancer-comorbidities-pancrea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  cancer-comorbidities-ovary---primary:
    run: cancer-comorbidities-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-pancrea---primary/output
  cancer-comorbidities---primary:
    run: cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-ovary---primary/output
  cancer-comorbidities-histiocytosis---primary:
    run: cancer-comorbidities-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities---primary/output
  cancer-comorbidities-tumor---primary:
    run: cancer-comorbidities-tumor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-histiocytosis---primary/output
  cancer-comorbidities-adenoma---primary:
    run: cancer-comorbidities-adenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-tumor---primary/output
  cancer-comorbidities-liver---primary:
    run: cancer-comorbidities-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-adenoma---primary/output
  cancer-comorbidities-category---primary:
    run: cancer-comorbidities-category---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-liver---primary/output
  cancer-comorbidities-tumour---primary:
    run: cancer-comorbidities-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-category---primary/output
  myelodysplastic-cancer-comorbidities---primary:
    run: myelodysplastic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-tumour---primary/output
  cancer-comorbidities-adenocarcinoma---primary:
    run: cancer-comorbidities-adenocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: myelodysplastic-cancer-comorbidities---primary/output
  cancer-comorbidities-uterus---primary:
    run: cancer-comorbidities-uterus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-adenocarcinoma---primary/output
  transitional-cancer-comorbidities---primary:
    run: transitional-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-uterus---primary/output
  cancer-comorbidities-medulloblastoma---primary:
    run: cancer-comorbidities-medulloblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: transitional-cancer-comorbidities---primary/output
  cancer-comorbidities-bladder---primary:
    run: cancer-comorbidities-bladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-medulloblastoma---primary/output
  cancer-comorbidities-endometrium---primary:
    run: cancer-comorbidities-endometrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-bladder---primary/output
  cancer-comorbidities-stomach---primary:
    run: cancer-comorbidities-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-endometrium---primary/output
  sigmoid-cancer-comorbidities---primary:
    run: sigmoid-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-stomach---primary/output
  lymphoblastic-cancer-comorbidities---primary:
    run: lymphoblastic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: sigmoid-cancer-comorbidities---primary/output
  lymphocytic-cancer-comorbidities---primary:
    run: lymphocytic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lymphoblastic-cancer-comorbidities---primary/output
  cancer-comorbidities-glucagonoma---primary:
    run: cancer-comorbidities-glucagonoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lymphocytic-cancer-comorbidities---primary/output
  cancer-comorbidities-fabry's---primary:
    run: cancer-comorbidities-fabry's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-glucagonoma---primary/output
  cancer-comorbidities-lymphoma---primary:
    run: cancer-comorbidities-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-fabry's---primary/output
  cancer-comorbidities-neoplasm---primary:
    run: cancer-comorbidities-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-lymphoma---primary/output
  cancer-comorbidities-tcell---primary:
    run: cancer-comorbidities-tcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-neoplasm---primary/output
  secondary-cancer-comorbidities---primary:
    run: secondary-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-tcell---primary/output
  cancer-comorbidities-larynx---primary:
    run: cancer-comorbidities-larynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: secondary-cancer-comorbidities---primary/output
  cancer-comorbidities-nephroblastoma---primary:
    run: cancer-comorbidities-nephroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-larynx---primary/output
  cancer-comorbidities-malignant---primary:
    run: cancer-comorbidities-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-nephroblastoma---primary/output
  cancer-comorbidities-vagina---primary:
    run: cancer-comorbidities-vagina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-malignant---primary/output
  cancer-comorbidities-rectum---primary:
    run: cancer-comorbidities-rectum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-vagina---primary/output
  follicular-cancer-comorbidities---primary:
    run: follicular-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-rectum---primary/output
  metastatic-cancer-comorbidities---primary:
    run: metastatic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: follicular-cancer-comorbidities---primary/output
  cancer-comorbidities-sarcoma---primary:
    run: cancer-comorbidities-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-comorbidities---primary/output
  chronic-cancer-comorbidities---primary:
    run: chronic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-sarcoma---primary/output
  multiple-cancer-comorbidities---primary:
    run: multiple-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chronic-cancer-comorbidities---primary/output
  cancer-comorbidities-colon---primary:
    run: cancer-comorbidities-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: multiple-cancer-comorbidities---primary/output
  cancer-comorbidities-brain---primary:
    run: cancer-comorbidities-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-colon---primary/output
  cancer-comorbidities-oligodendroglioma---primary:
    run: cancer-comorbidities-oligodendroglioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-brain---primary/output
  pituitary-cancer-comorbidities---primary:
    run: pituitary-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-oligodendroglioma---primary/output
  acute-cancer-comorbidities---primary:
    run: acute-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: pituitary-cancer-comorbidities---primary/output
  cancer-comorbidities-kidney---primary:
    run: cancer-comorbidities-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: acute-cancer-comorbidities---primary/output
  cancer-comorbidities-syringoma---primary:
    run: cancer-comorbidities-syringoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-kidney---primary/output
  parathyroid-cancer-comorbidities---primary:
    run: parathyroid-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-syringoma---primary/output
  small-cancer-comorbidities---primary:
    run: small-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: parathyroid-cancer-comorbidities---primary/output
  carcinoid-cancer-comorbidities---primary:
    run: carcinoid-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: small-cancer-comorbidities---primary/output
  cancer-comorbidities-insulinoma---primary:
    run: cancer-comorbidities-insulinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: carcinoid-cancer-comorbidities---primary/output
  cancer-comorbidities-breast---primary:
    run: cancer-comorbidities-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-insulinoma---primary/output
  cancer-comorbidities-prostate---primary:
    run: cancer-comorbidities-prostate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-breast---primary/output
  cancer-comorbidities-carcinoma---primary:
    run: cancer-comorbidities-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-prostate---primary/output
  adrenal-cancer-comorbidities---primary:
    run: adrenal-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-carcinoma---primary/output
  large-cancer-comorbidities---primary:
    run: large-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: adrenal-cancer-comorbidities---primary/output
  cutaneous-cancer-comorbidities---primary:
    run: cutaneous-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: large-cancer-comorbidities---primary/output
  neoplastic-cancer-comorbidities---primary:
    run: neoplastic-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: cutaneous-cancer-comorbidities---primary/output
  myeloid-cancer-comorbidities---primary:
    run: myeloid-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: neoplastic-cancer-comorbidities---primary/output
  cancer-comorbidities-cervix---primary:
    run: cancer-comorbidities-cervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: myeloid-cancer-comorbidities---primary/output
  cancer-comorbidities-nonhodgkin---primary:
    run: cancer-comorbidities-nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-cervix---primary/output
  lymphoproliferative-cancer-comorbidities---primary:
    run: lymphoproliferative-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-nonhodgkin---primary/output
  lymphoid-cancer-comorbidities---primary:
    run: lymphoid-cancer-comorbidities---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: lymphoproliferative-cancer-comorbidities---primary/output
  cancer-comorbidities-melanoma---primary:
    run: cancer-comorbidities-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: lymphoid-cancer-comorbidities---primary/output
  cancer-comorbidities-dupuytren's---primary:
    run: cancer-comorbidities-dupuytren's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-melanoma---primary/output
  cancer-comorbidities-seminoma---primary:
    run: cancer-comorbidities-seminoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-dupuytren's---primary/output
  cancer-comorbidities-glioma---primary:
    run: cancer-comorbidities-glioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-seminoma---primary/output
  cancer-comorbidities-leukaemia---primary:
    run: cancer-comorbidities-leukaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-glioma---primary/output
  cancer-comorbidities-microprolactinoma---primary:
    run: cancer-comorbidities-microprolactinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-leukaemia---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cancer-comorbidities-microprolactinoma---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
