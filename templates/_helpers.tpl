{{- define "cms.labels" -}}
name: "{{ .Values.cms.name }}"
version: "{{ .Values.cms.image.tag }}"
tier: cms
app.kubernetes.io/instance: "{{ $.Release.Name }}"
app.kubernetes.io/version: "{{ $.Chart.AppVersion }}"
app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
{{- end }}

{{- define "db.labels" -}}
name: {{ .Values.db.name }}
version: "{{ .Values.db.image.tag }}"
tier: db
app.kubernetes.io/instance: "{{ $.Release.Name }}"
app.kubernetes.io/version: "{{ $.Chart.AppVersion }}"
app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
{{- end }}
