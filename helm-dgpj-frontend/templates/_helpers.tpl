{{- define "helm-dgpj-frontend.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "helm-dgpj-frontend.serviceAccountName" -}}
{{ include "helm-dgpj-frontend.fullname" . }}
{{- end }}

{{- define "helm-dgpj-frontend.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "helm-dgpj-frontend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
