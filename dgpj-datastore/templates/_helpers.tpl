{{- define "dgpj-datastore.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-datastore.serviceAccountName" -}}
{{ include "dgpj-datastore.fullname" . }}
{{- end }}

{{- define "dgpj-datastore.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-datastore.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
