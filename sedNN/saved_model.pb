ׅ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
;
Elu
features"T
activations"T"
Ttype:
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
{
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x* 
shared_namedense_61/kernel
t
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes
:	?x*
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes
:x*
dtype0
z
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx* 
shared_namedense_62/kernel
s
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes

:xx*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:x*
dtype0
z
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx* 
shared_namedense_63/kernel
s
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes

:xx*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes
:x*
dtype0
z
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x* 
shared_namedense_64/kernel
s
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes

:x*
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*'
shared_nameAdam/dense_61/kernel/m
?
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes
:	?x*
dtype0
?
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:x*
dtype0
?
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx*'
shared_nameAdam/dense_62/kernel/m
?
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes

:xx*
dtype0
?
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:x*
dtype0
?
Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx*'
shared_nameAdam/dense_63/kernel/m
?
*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes

:xx*
dtype0
?
Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:x*
dtype0
?
Adam/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*'
shared_nameAdam/dense_64/kernel/m
?
*Adam/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/m*
_output_shapes

:x*
dtype0
?
Adam/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_64/bias/m
y
(Adam/dense_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*'
shared_nameAdam/dense_61/kernel/v
?
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes
:	?x*
dtype0
?
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:x*
dtype0
?
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx*'
shared_nameAdam/dense_62/kernel/v
?
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes

:xx*
dtype0
?
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:x*
dtype0
?
Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xx*'
shared_nameAdam/dense_63/kernel/v
?
*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes

:xx*
dtype0
?
Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:x*
dtype0
?
Adam/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*'
shared_nameAdam/dense_64/kernel/v
?
*Adam/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/v*
_output_shapes

:x*
dtype0
?
Adam/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_64/bias/v
y
(Adam/dense_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  ??

NoOpNoOp
?;
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?;B?; B?;
x
m
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?
layer-0
	layer_with_weights-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
regularization_losses
trainable_variables
 	variables
!	keras_api
?
"iter

#beta_1

$beta_2
	%decay
&learning_rate'm?(m?)m?*m?+m?,m?-m?.m?'v?(v?)v?*v?+v?,v?-v?.v?
 
8
'0
(1
)2
*3
+4
,5
-6
.7
8
'0
(1
)2
*3
+4
,5
-6
.7
?
regularization_losses

/layers
0non_trainable_variables
trainable_variables
1layer_metrics
2layer_regularization_losses
3metrics
	variables
 
 
h

'kernel
(bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
R
8regularization_losses
9trainable_variables
:	variables
;	keras_api
h

)kernel
*bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

+kernel
,bias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
R
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
R
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
h

-kernel
.bias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api

T	keras_api

U	keras_api

V	keras_api

W	keras_api

X	keras_api

Y	keras_api

Z	keras_api

[	keras_api

\	keras_api

]	keras_api

^	keras_api

_	keras_api

`	keras_api
 
8
'0
(1
)2
*3
+4
,5
-6
.7
8
'0
(1
)2
*3
+4
,5
-6
.7
?
regularization_losses

alayers
bnon_trainable_variables
trainable_variables
clayer_metrics
dlayer_regularization_losses
emetrics
 	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_61/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_61/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_62/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_62/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_63/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_63/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_64/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_64/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE

0
 
 
 

f0
 

'0
(1

'0
(1
?
4regularization_losses

glayers
hnon_trainable_variables
5trainable_variables
ilayer_metrics
jlayer_regularization_losses
kmetrics
6	variables
 
 
 
?
8regularization_losses

llayers
mnon_trainable_variables
9trainable_variables
nlayer_metrics
olayer_regularization_losses
pmetrics
:	variables
 

)0
*1

)0
*1
?
<regularization_losses

qlayers
rnon_trainable_variables
=trainable_variables
slayer_metrics
tlayer_regularization_losses
umetrics
>	variables
 
 
 
?
@regularization_losses

vlayers
wnon_trainable_variables
Atrainable_variables
xlayer_metrics
ylayer_regularization_losses
zmetrics
B	variables
 

+0
,1

+0
,1
?
Dregularization_losses

{layers
|non_trainable_variables
Etrainable_variables
}layer_metrics
~layer_regularization_losses
metrics
F	variables
 
 
 
?
Hregularization_losses
?layers
?non_trainable_variables
Itrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
J	variables
 
 
 
?
Lregularization_losses
?layers
?non_trainable_variables
Mtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
N	variables
 

-0
.1

-0
.1
?
Pregularization_losses
?layers
?non_trainable_variables
Qtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
R	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
?
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
 
 
 
 
8

?total

?count
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
xv
VARIABLE_VALUEAdam/dense_61/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_61/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_62/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_62/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_63/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_63/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_64/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_64/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_61/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_61/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_62/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_62/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_63/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_63/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_64/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_64/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_1Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/biasConstConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_240937
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOp#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp*Adam/dense_64/kernel/m/Read/ReadVariableOp(Adam/dense_64/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOp*Adam/dense_64/kernel/v/Read/ReadVariableOp(Adam/dense_64/bias/v/Read/ReadVariableOpConst_2*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_241661
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/biastotalcountAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/dense_64/kernel/mAdam/dense_64/bias/mAdam/dense_61/kernel/vAdam/dense_61/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/vAdam/dense_64/kernel/vAdam/dense_64/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_241764??
?
G
+__inference_dropout_36_layer_call_fn_241460

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2402092
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
D__inference_dense_62_layer_call_and_return_conditional_losses_240198

inputs0
matmul_readvariableop_resource:xx-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
C__inference_model_4_layer_call_and_return_conditional_losses_240904
input_1
model_240882:	?x
model_240884:x
model_240886:xx
model_240888:x
model_240890:xx
model_240892:x
model_240894:x
model_240896:
model_240898
model_240900
identity??model/StatefulPartitionedCall?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_240882model_240884model_240886model_240888model_240890model_240892model_240894model_240896model_240898model_240900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2405262
model/StatefulPartitionedCall?
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityn
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?
d
+__inference_dropout_36_layer_call_fn_241465

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2403892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?{
?
!__inference__wrapped_model_240156
input_1H
5model_4_model_dense_61_matmul_readvariableop_resource:	?xD
6model_4_model_dense_61_biasadd_readvariableop_resource:xG
5model_4_model_dense_62_matmul_readvariableop_resource:xxD
6model_4_model_dense_62_biasadd_readvariableop_resource:xG
5model_4_model_dense_63_matmul_readvariableop_resource:xxD
6model_4_model_dense_63_biasadd_readvariableop_resource:xG
5model_4_model_dense_64_matmul_readvariableop_resource:xD
6model_4_model_dense_64_biasadd_readvariableop_resource:
model_4_model_240131
model_4_model_240134
identity??-model_4/model/dense_61/BiasAdd/ReadVariableOp?,model_4/model/dense_61/MatMul/ReadVariableOp?-model_4/model/dense_62/BiasAdd/ReadVariableOp?,model_4/model/dense_62/MatMul/ReadVariableOp?-model_4/model/dense_63/BiasAdd/ReadVariableOp?,model_4/model/dense_63/MatMul/ReadVariableOp?-model_4/model/dense_64/BiasAdd/ReadVariableOp?,model_4/model/dense_64/MatMul/ReadVariableOp?
,model_4/model/dense_61/MatMul/ReadVariableOpReadVariableOp5model_4_model_dense_61_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02.
,model_4/model/dense_61/MatMul/ReadVariableOp?
model_4/model/dense_61/MatMulMatMulinput_14model_4/model/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_61/MatMul?
-model_4/model/dense_61/BiasAdd/ReadVariableOpReadVariableOp6model_4_model_dense_61_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02/
-model_4/model/dense_61/BiasAdd/ReadVariableOp?
model_4/model/dense_61/BiasAddBiasAdd'model_4/model/dense_61/MatMul:product:05model_4/model/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2 
model_4/model/dense_61/BiasAdd?
model_4/model/dense_61/EluElu'model_4/model/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_61/Elu?
!model_4/model/dropout_35/IdentityIdentity(model_4/model/dense_61/Elu:activations:0*
T0*'
_output_shapes
:?????????x2#
!model_4/model/dropout_35/Identity?
,model_4/model/dense_62/MatMul/ReadVariableOpReadVariableOp5model_4_model_dense_62_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02.
,model_4/model/dense_62/MatMul/ReadVariableOp?
model_4/model/dense_62/MatMulMatMul*model_4/model/dropout_35/Identity:output:04model_4/model/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_62/MatMul?
-model_4/model/dense_62/BiasAdd/ReadVariableOpReadVariableOp6model_4_model_dense_62_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02/
-model_4/model/dense_62/BiasAdd/ReadVariableOp?
model_4/model/dense_62/BiasAddBiasAdd'model_4/model/dense_62/MatMul:product:05model_4/model/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2 
model_4/model/dense_62/BiasAdd?
model_4/model/dense_62/EluElu'model_4/model/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_62/Elu?
!model_4/model/dropout_36/IdentityIdentity(model_4/model/dense_62/Elu:activations:0*
T0*'
_output_shapes
:?????????x2#
!model_4/model/dropout_36/Identity?
,model_4/model/dense_63/MatMul/ReadVariableOpReadVariableOp5model_4_model_dense_63_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02.
,model_4/model/dense_63/MatMul/ReadVariableOp?
model_4/model/dense_63/MatMulMatMul*model_4/model/dropout_36/Identity:output:04model_4/model/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_63/MatMul?
-model_4/model/dense_63/BiasAdd/ReadVariableOpReadVariableOp6model_4_model_dense_63_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02/
-model_4/model/dense_63/BiasAdd/ReadVariableOp?
model_4/model/dense_63/BiasAddBiasAdd'model_4/model/dense_63/MatMul:product:05model_4/model/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2 
model_4/model/dense_63/BiasAdd?
model_4/model/dense_63/EluElu'model_4/model/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model_4/model/dense_63/Elu?
!model_4/model/dropout_37/IdentityIdentity(model_4/model/dense_63/Elu:activations:0*
T0*'
_output_shapes
:?????????x2#
!model_4/model/dropout_37/Identity?
model_4/model/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
model_4/model/flatten_4/Const?
model_4/model/flatten_4/ReshapeReshape*model_4/model/dropout_37/Identity:output:0&model_4/model/flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????x2!
model_4/model/flatten_4/Reshape?
,model_4/model/dense_64/MatMul/ReadVariableOpReadVariableOp5model_4_model_dense_64_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02.
,model_4/model/dense_64/MatMul/ReadVariableOp?
model_4/model/dense_64/MatMulMatMul(model_4/model/flatten_4/Reshape:output:04model_4/model/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/model/dense_64/MatMul?
-model_4/model/dense_64/BiasAdd/ReadVariableOpReadVariableOp6model_4_model_dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model_4/model/dense_64/BiasAdd/ReadVariableOp?
model_4/model/dense_64/BiasAddBiasAdd'model_4/model/dense_64/MatMul:product:05model_4/model/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
model_4/model/dense_64/BiasAdd?
model_4/model/dense_64/EluElu'model_4/model/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_4/model/dense_64/Elu?
=model_4/model/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2?
=model_4/model/tf.__operators__.getitem_17/strided_slice/stack?
?model_4/model/tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?model_4/model/tf.__operators__.getitem_17/strided_slice/stack_1?
?model_4/model/tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?model_4/model/tf.__operators__.getitem_17/strided_slice/stack_2?
7model_4/model/tf.__operators__.getitem_17/strided_sliceStridedSlice(model_4/model/dense_64/Elu:activations:0Fmodel_4/model/tf.__operators__.getitem_17/strided_slice/stack:output:0Hmodel_4/model/tf.__operators__.getitem_17/strided_slice/stack_1:output:0Hmodel_4/model/tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask29
7model_4/model/tf.__operators__.getitem_17/strided_slice?
=model_4/model/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=model_4/model/tf.__operators__.getitem_16/strided_slice/stack?
?model_4/model/tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2A
?model_4/model/tf.__operators__.getitem_16/strided_slice/stack_1?
?model_4/model/tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?model_4/model/tf.__operators__.getitem_16/strided_slice/stack_2?
7model_4/model/tf.__operators__.getitem_16/strided_sliceStridedSlice(model_4/model/dense_64/Elu:activations:0Fmodel_4/model/tf.__operators__.getitem_16/strided_slice/stack:output:0Hmodel_4/model/tf.__operators__.getitem_16/strided_slice/stack_1:output:0Hmodel_4/model/tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask29
7model_4/model/tf.__operators__.getitem_16/strided_slice?
8model_4/model/tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2:
8model_4/model/tf.math.reduce_sum_9/Sum/reduction_indices?
&model_4/model/tf.math.reduce_sum_9/SumSum@model_4/model/tf.__operators__.getitem_17/strided_slice:output:0Amodel_4/model/tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2(
&model_4/model/tf.math.reduce_sum_9/Sum?
8model_4/model/tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2:
8model_4/model/tf.math.reduce_sum_8/Sum/reduction_indices?
&model_4/model/tf.math.reduce_sum_8/SumSum@model_4/model/tf.__operators__.getitem_16/strided_slice:output:0Amodel_4/model/tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2(
&model_4/model/tf.math.reduce_sum_8/Sum?
$model_4/model/tf.math.subtract_9/SubSubmodel_4_model_240131/model_4/model/tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2&
$model_4/model/tf.math.subtract_9/Sub?
$model_4/model/tf.math.subtract_8/SubSubmodel_4_model_240134/model_4/model/tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2&
$model_4/model/tf.math.subtract_8/Sub?
=model_4/model/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2?
=model_4/model/tf.__operators__.getitem_19/strided_slice/stack?
?model_4/model/tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?model_4/model/tf.__operators__.getitem_19/strided_slice/stack_1?
?model_4/model/tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?model_4/model/tf.__operators__.getitem_19/strided_slice/stack_2?
7model_4/model/tf.__operators__.getitem_19/strided_sliceStridedSlice(model_4/model/dense_64/Elu:activations:0Fmodel_4/model/tf.__operators__.getitem_19/strided_slice/stack:output:0Hmodel_4/model/tf.__operators__.getitem_19/strided_slice/stack_1:output:0Hmodel_4/model/tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask29
7model_4/model/tf.__operators__.getitem_19/strided_slice?
-model_4/model/tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-model_4/model/tf.expand_dims_9/ExpandDims/dim?
)model_4/model/tf.expand_dims_9/ExpandDims
ExpandDims(model_4/model/tf.math.subtract_9/Sub:z:06model_4/model/tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2+
)model_4/model/tf.expand_dims_9/ExpandDims?
=model_4/model/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=model_4/model/tf.__operators__.getitem_18/strided_slice/stack?
?model_4/model/tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2A
?model_4/model/tf.__operators__.getitem_18/strided_slice/stack_1?
?model_4/model/tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?model_4/model/tf.__operators__.getitem_18/strided_slice/stack_2?
7model_4/model/tf.__operators__.getitem_18/strided_sliceStridedSlice(model_4/model/dense_64/Elu:activations:0Fmodel_4/model/tf.__operators__.getitem_18/strided_slice/stack:output:0Hmodel_4/model/tf.__operators__.getitem_18/strided_slice/stack_1:output:0Hmodel_4/model/tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask29
7model_4/model/tf.__operators__.getitem_18/strided_slice?
-model_4/model/tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-model_4/model/tf.expand_dims_8/ExpandDims/dim?
)model_4/model/tf.expand_dims_8/ExpandDims
ExpandDims(model_4/model/tf.math.subtract_8/Sub:z:06model_4/model/tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2+
)model_4/model/tf.expand_dims_8/ExpandDims?
&model_4/model/tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_4/model/tf.concat_12/concat/axis?
!model_4/model/tf.concat_12/concatConcatV2@model_4/model/tf.__operators__.getitem_18/strided_slice:output:02model_4/model/tf.expand_dims_8/ExpandDims:output:0/model_4/model/tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!model_4/model/tf.concat_12/concat?
&model_4/model/tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_4/model/tf.concat_13/concat/axis?
!model_4/model/tf.concat_13/concatConcatV2@model_4/model/tf.__operators__.getitem_19/strided_slice:output:02model_4/model/tf.expand_dims_9/ExpandDims:output:0/model_4/model/tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!model_4/model/tf.concat_13/concat?
&model_4/model/tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_4/model/tf.concat_14/concat/axis?
!model_4/model/tf.concat_14/concatConcatV2*model_4/model/tf.concat_12/concat:output:0*model_4/model/tf.concat_13/concat:output:0/model_4/model/tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!model_4/model/tf.concat_14/concat?
IdentityIdentity*model_4/model/tf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^model_4/model/dense_61/BiasAdd/ReadVariableOp-^model_4/model/dense_61/MatMul/ReadVariableOp.^model_4/model/dense_62/BiasAdd/ReadVariableOp-^model_4/model/dense_62/MatMul/ReadVariableOp.^model_4/model/dense_63/BiasAdd/ReadVariableOp-^model_4/model/dense_63/MatMul/ReadVariableOp.^model_4/model/dense_64/BiasAdd/ReadVariableOp-^model_4/model/dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2^
-model_4/model/dense_61/BiasAdd/ReadVariableOp-model_4/model/dense_61/BiasAdd/ReadVariableOp2\
,model_4/model/dense_61/MatMul/ReadVariableOp,model_4/model/dense_61/MatMul/ReadVariableOp2^
-model_4/model/dense_62/BiasAdd/ReadVariableOp-model_4/model/dense_62/BiasAdd/ReadVariableOp2\
,model_4/model/dense_62/MatMul/ReadVariableOp,model_4/model/dense_62/MatMul/ReadVariableOp2^
-model_4/model/dense_63/BiasAdd/ReadVariableOp-model_4/model/dense_63/BiasAdd/ReadVariableOp2\
,model_4/model/dense_63/MatMul/ReadVariableOp,model_4/model/dense_63/MatMul/ReadVariableOp2^
-model_4/model/dense_64/BiasAdd/ReadVariableOp-model_4/model/dense_64/BiasAdd/ReadVariableOp2\
,model_4/model/dense_64/MatMul/ReadVariableOp,model_4/model/dense_64/MatMul/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?m
?
C__inference_model_4_layer_call_and_return_conditional_losses_241010

inputs@
-model_dense_61_matmul_readvariableop_resource:	?x<
.model_dense_61_biasadd_readvariableop_resource:x?
-model_dense_62_matmul_readvariableop_resource:xx<
.model_dense_62_biasadd_readvariableop_resource:x?
-model_dense_63_matmul_readvariableop_resource:xx<
.model_dense_63_biasadd_readvariableop_resource:x?
-model_dense_64_matmul_readvariableop_resource:x<
.model_dense_64_biasadd_readvariableop_resource:
model_240985
model_240988
identity??%model/dense_61/BiasAdd/ReadVariableOp?$model/dense_61/MatMul/ReadVariableOp?%model/dense_62/BiasAdd/ReadVariableOp?$model/dense_62/MatMul/ReadVariableOp?%model/dense_63/BiasAdd/ReadVariableOp?$model/dense_63/MatMul/ReadVariableOp?%model/dense_64/BiasAdd/ReadVariableOp?$model/dense_64/MatMul/ReadVariableOp?
$model/dense_61/MatMul/ReadVariableOpReadVariableOp-model_dense_61_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02&
$model/dense_61/MatMul/ReadVariableOp?
model/dense_61/MatMulMatMulinputs,model/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/MatMul?
%model/dense_61/BiasAdd/ReadVariableOpReadVariableOp.model_dense_61_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_61/BiasAdd/ReadVariableOp?
model/dense_61/BiasAddBiasAddmodel/dense_61/MatMul:product:0-model/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/BiasAdd?
model/dense_61/EluElumodel/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/Elu?
model/dropout_35/IdentityIdentity model/dense_61/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
model/dropout_35/Identity?
$model/dense_62/MatMul/ReadVariableOpReadVariableOp-model_dense_62_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02&
$model/dense_62/MatMul/ReadVariableOp?
model/dense_62/MatMulMatMul"model/dropout_35/Identity:output:0,model/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/MatMul?
%model/dense_62/BiasAdd/ReadVariableOpReadVariableOp.model_dense_62_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_62/BiasAdd/ReadVariableOp?
model/dense_62/BiasAddBiasAddmodel/dense_62/MatMul:product:0-model/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/BiasAdd?
model/dense_62/EluElumodel/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/Elu?
model/dropout_36/IdentityIdentity model/dense_62/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
model/dropout_36/Identity?
$model/dense_63/MatMul/ReadVariableOpReadVariableOp-model_dense_63_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02&
$model/dense_63/MatMul/ReadVariableOp?
model/dense_63/MatMulMatMul"model/dropout_36/Identity:output:0,model/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/MatMul?
%model/dense_63/BiasAdd/ReadVariableOpReadVariableOp.model_dense_63_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_63/BiasAdd/ReadVariableOp?
model/dense_63/BiasAddBiasAddmodel/dense_63/MatMul:product:0-model/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/BiasAdd?
model/dense_63/EluElumodel/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/Elu?
model/dropout_37/IdentityIdentity model/dense_63/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
model/dropout_37/Identity
model/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
model/flatten_4/Const?
model/flatten_4/ReshapeReshape"model/dropout_37/Identity:output:0model/flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????x2
model/flatten_4/Reshape?
$model/dense_64/MatMul/ReadVariableOpReadVariableOp-model_dense_64_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02&
$model/dense_64/MatMul/ReadVariableOp?
model/dense_64/MatMulMatMul model/flatten_4/Reshape:output:0,model/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_64/MatMul?
%model/dense_64/BiasAdd/ReadVariableOpReadVariableOp.model_dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/dense_64/BiasAdd/ReadVariableOp?
model/dense_64/BiasAddBiasAddmodel/dense_64/MatMul:product:0-model/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_64/BiasAdd?
model/dense_64/EluElumodel/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/dense_64/Elu?
5model/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5model/tf.__operators__.getitem_17/strided_slice/stack?
7model/tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model/tf.__operators__.getitem_17/strided_slice/stack_1?
7model/tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_17/strided_slice/stack_2?
/model/tf.__operators__.getitem_17/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_17/strided_slice/stack:output:0@model/tf.__operators__.getitem_17/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask21
/model/tf.__operators__.getitem_17/strided_slice?
5model/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model/tf.__operators__.getitem_16/strided_slice/stack?
7model/tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7model/tf.__operators__.getitem_16/strided_slice/stack_1?
7model/tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_16/strided_slice/stack_2?
/model/tf.__operators__.getitem_16/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_16/strided_slice/stack:output:0@model/tf.__operators__.getitem_16/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask21
/model/tf.__operators__.getitem_16/strided_slice?
0model/tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :22
0model/tf.math.reduce_sum_9/Sum/reduction_indices?
model/tf.math.reduce_sum_9/SumSum8model/tf.__operators__.getitem_17/strided_slice:output:09model/tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2 
model/tf.math.reduce_sum_9/Sum?
0model/tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :22
0model/tf.math.reduce_sum_8/Sum/reduction_indices?
model/tf.math.reduce_sum_8/SumSum8model/tf.__operators__.getitem_16/strided_slice:output:09model/tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2 
model/tf.math.reduce_sum_8/Sum?
model/tf.math.subtract_9/SubSubmodel_240985'model/tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
model/tf.math.subtract_9/Sub?
model/tf.math.subtract_8/SubSubmodel_240988'model/tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
model/tf.math.subtract_8/Sub?
5model/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5model/tf.__operators__.getitem_19/strided_slice/stack?
7model/tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model/tf.__operators__.getitem_19/strided_slice/stack_1?
7model/tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_19/strided_slice/stack_2?
/model/tf.__operators__.getitem_19/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_19/strided_slice/stack:output:0@model/tf.__operators__.getitem_19/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask21
/model/tf.__operators__.getitem_19/strided_slice?
%model/tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/tf.expand_dims_9/ExpandDims/dim?
!model/tf.expand_dims_9/ExpandDims
ExpandDims model/tf.math.subtract_9/Sub:z:0.model/tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2#
!model/tf.expand_dims_9/ExpandDims?
5model/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model/tf.__operators__.getitem_18/strided_slice/stack?
7model/tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7model/tf.__operators__.getitem_18/strided_slice/stack_1?
7model/tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_18/strided_slice/stack_2?
/model/tf.__operators__.getitem_18/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_18/strided_slice/stack:output:0@model/tf.__operators__.getitem_18/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask21
/model/tf.__operators__.getitem_18/strided_slice?
%model/tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/tf.expand_dims_8/ExpandDims/dim?
!model/tf.expand_dims_8/ExpandDims
ExpandDims model/tf.math.subtract_8/Sub:z:0.model/tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2#
!model/tf.expand_dims_8/ExpandDims?
model/tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_12/concat/axis?
model/tf.concat_12/concatConcatV28model/tf.__operators__.getitem_18/strided_slice:output:0*model/tf.expand_dims_8/ExpandDims:output:0'model/tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_12/concat?
model/tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_13/concat/axis?
model/tf.concat_13/concatConcatV28model/tf.__operators__.getitem_19/strided_slice:output:0*model/tf.expand_dims_9/ExpandDims:output:0'model/tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_13/concat?
model/tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_14/concat/axis?
model/tf.concat_14/concatConcatV2"model/tf.concat_12/concat:output:0"model/tf.concat_13/concat:output:0'model/tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_14/concat}
IdentityIdentity"model/tf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp&^model/dense_61/BiasAdd/ReadVariableOp%^model/dense_61/MatMul/ReadVariableOp&^model/dense_62/BiasAdd/ReadVariableOp%^model/dense_62/MatMul/ReadVariableOp&^model/dense_63/BiasAdd/ReadVariableOp%^model/dense_63/MatMul/ReadVariableOp&^model/dense_64/BiasAdd/ReadVariableOp%^model/dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2N
%model/dense_61/BiasAdd/ReadVariableOp%model/dense_61/BiasAdd/ReadVariableOp2L
$model/dense_61/MatMul/ReadVariableOp$model/dense_61/MatMul/ReadVariableOp2N
%model/dense_62/BiasAdd/ReadVariableOp%model/dense_62/BiasAdd/ReadVariableOp2L
$model/dense_62/MatMul/ReadVariableOp$model/dense_62/MatMul/ReadVariableOp2N
%model/dense_63/BiasAdd/ReadVariableOp%model/dense_63/BiasAdd/ReadVariableOp2L
$model/dense_63/MatMul/ReadVariableOp$model/dense_63/MatMul/ReadVariableOp2N
%model/dense_64/BiasAdd/ReadVariableOp%model/dense_64/BiasAdd/ReadVariableOp2L
$model/dense_64/MatMul/ReadVariableOp$model/dense_64/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_241396

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
(__inference_model_4_layer_call_fn_240854
input_1
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_2408062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?
?
C__inference_model_4_layer_call_and_return_conditional_losses_240879
input_1
model_240857:	?x
model_240859:x
model_240861:xx
model_240863:x
model_240865:xx
model_240867:x
model_240869:x
model_240871:
model_240873
model_240875
identity??model/StatefulPartitionedCall?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_240857model_240859model_240861model_240863model_240865model_240867model_240869model_240871model_240873model_240875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2402972
model/StatefulPartitionedCall?
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityn
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_241455

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_240185

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
)__inference_dense_63_layer_call_fn_241485

inputs
unknown:xx
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_2402222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_240574
input_5
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2405262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_5:	

_output_shapes
: :


_output_shapes
: 
?

?
&__inference_model_layer_call_fn_241371

inputs
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2405262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?

?
D__inference_dense_62_layer_call_and_return_conditional_losses_241429

inputs0
matmul_readvariableop_resource:xx-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?X
?
A__inference_model_layer_call_and_return_conditional_losses_240297

inputs"
dense_61_240175:	?x
dense_61_240177:x!
dense_62_240199:xx
dense_62_240201:x!
dense_63_240223:xx
dense_63_240225:x!
dense_64_240255:x
dense_64_240257:
unknown
	unknown_0
identity?? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCallinputsdense_61_240175dense_61_240177*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_61_layer_call_and_return_conditional_losses_2401742"
 dense_61/StatefulPartitionedCall?
dropout_35/PartitionedCallPartitionedCall)dense_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2401852
dropout_35/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_62_240199dense_62_240201*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_2401982"
 dense_62/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2402092
dropout_36/PartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_63_240223dense_63_240225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_2402222"
 dense_63/StatefulPartitionedCall?
dropout_37/PartitionedCallPartitionedCall)dense_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2402332
dropout_37/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall#dropout_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_2402412
flatten_4/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_64_240255dense_64_240257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_2402542"
 dense_64/StatefulPartitionedCall?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?
d
+__inference_dropout_37_layer_call_fn_241512

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2403562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
C__inference_model_4_layer_call_and_return_conditional_losses_240731

inputs
model_240709:	?x
model_240711:x
model_240713:xx
model_240715:x
model_240717:xx
model_240719:x
model_240721:x
model_240723:
model_240725
model_240727
identity??model/StatefulPartitionedCall?
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_240709model_240711model_240713model_240715model_240717model_240719model_240721model_240723model_240725model_240727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2402972
model/StatefulPartitionedCall?
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityn
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_240389

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
e
F__inference_dropout_37_layer_call_and_return_conditional_losses_240356

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
)__inference_dense_62_layer_call_fn_241438

inputs
unknown:xx
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_2401982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
??
?
C__inference_model_4_layer_call_and_return_conditional_losses_241104

inputs@
-model_dense_61_matmul_readvariableop_resource:	?x<
.model_dense_61_biasadd_readvariableop_resource:x?
-model_dense_62_matmul_readvariableop_resource:xx<
.model_dense_62_biasadd_readvariableop_resource:x?
-model_dense_63_matmul_readvariableop_resource:xx<
.model_dense_63_biasadd_readvariableop_resource:x?
-model_dense_64_matmul_readvariableop_resource:x<
.model_dense_64_biasadd_readvariableop_resource:
model_241079
model_241082
identity??%model/dense_61/BiasAdd/ReadVariableOp?$model/dense_61/MatMul/ReadVariableOp?%model/dense_62/BiasAdd/ReadVariableOp?$model/dense_62/MatMul/ReadVariableOp?%model/dense_63/BiasAdd/ReadVariableOp?$model/dense_63/MatMul/ReadVariableOp?%model/dense_64/BiasAdd/ReadVariableOp?$model/dense_64/MatMul/ReadVariableOp?
$model/dense_61/MatMul/ReadVariableOpReadVariableOp-model_dense_61_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02&
$model/dense_61/MatMul/ReadVariableOp?
model/dense_61/MatMulMatMulinputs,model/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/MatMul?
%model/dense_61/BiasAdd/ReadVariableOpReadVariableOp.model_dense_61_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_61/BiasAdd/ReadVariableOp?
model/dense_61/BiasAddBiasAddmodel/dense_61/MatMul:product:0-model/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/BiasAdd?
model/dense_61/EluElumodel/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_61/Elu?
model/dropout_35/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
model/dropout_35/dropout/Const?
model/dropout_35/dropout/MulMul model/dense_61/Elu:activations:0'model/dropout_35/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
model/dropout_35/dropout/Mul?
model/dropout_35/dropout/ShapeShape model/dense_61/Elu:activations:0*
T0*
_output_shapes
:2 
model/dropout_35/dropout/Shape?
5model/dropout_35/dropout/random_uniform/RandomUniformRandomUniform'model/dropout_35/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype027
5model/dropout_35/dropout/random_uniform/RandomUniform?
'model/dropout_35/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'model/dropout_35/dropout/GreaterEqual/y?
%model/dropout_35/dropout/GreaterEqualGreaterEqual>model/dropout_35/dropout/random_uniform/RandomUniform:output:00model/dropout_35/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2'
%model/dropout_35/dropout/GreaterEqual?
model/dropout_35/dropout/CastCast)model/dropout_35/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
model/dropout_35/dropout/Cast?
model/dropout_35/dropout/Mul_1Mul model/dropout_35/dropout/Mul:z:0!model/dropout_35/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2 
model/dropout_35/dropout/Mul_1?
$model/dense_62/MatMul/ReadVariableOpReadVariableOp-model_dense_62_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02&
$model/dense_62/MatMul/ReadVariableOp?
model/dense_62/MatMulMatMul"model/dropout_35/dropout/Mul_1:z:0,model/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/MatMul?
%model/dense_62/BiasAdd/ReadVariableOpReadVariableOp.model_dense_62_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_62/BiasAdd/ReadVariableOp?
model/dense_62/BiasAddBiasAddmodel/dense_62/MatMul:product:0-model/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/BiasAdd?
model/dense_62/EluElumodel/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_62/Elu?
model/dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
model/dropout_36/dropout/Const?
model/dropout_36/dropout/MulMul model/dense_62/Elu:activations:0'model/dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
model/dropout_36/dropout/Mul?
model/dropout_36/dropout/ShapeShape model/dense_62/Elu:activations:0*
T0*
_output_shapes
:2 
model/dropout_36/dropout/Shape?
5model/dropout_36/dropout/random_uniform/RandomUniformRandomUniform'model/dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype027
5model/dropout_36/dropout/random_uniform/RandomUniform?
'model/dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'model/dropout_36/dropout/GreaterEqual/y?
%model/dropout_36/dropout/GreaterEqualGreaterEqual>model/dropout_36/dropout/random_uniform/RandomUniform:output:00model/dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2'
%model/dropout_36/dropout/GreaterEqual?
model/dropout_36/dropout/CastCast)model/dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
model/dropout_36/dropout/Cast?
model/dropout_36/dropout/Mul_1Mul model/dropout_36/dropout/Mul:z:0!model/dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2 
model/dropout_36/dropout/Mul_1?
$model/dense_63/MatMul/ReadVariableOpReadVariableOp-model_dense_63_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02&
$model/dense_63/MatMul/ReadVariableOp?
model/dense_63/MatMulMatMul"model/dropout_36/dropout/Mul_1:z:0,model/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/MatMul?
%model/dense_63/BiasAdd/ReadVariableOpReadVariableOp.model_dense_63_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02'
%model/dense_63/BiasAdd/ReadVariableOp?
model/dense_63/BiasAddBiasAddmodel/dense_63/MatMul:product:0-model/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/BiasAdd?
model/dense_63/EluElumodel/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model/dense_63/Elu?
model/dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
model/dropout_37/dropout/Const?
model/dropout_37/dropout/MulMul model/dense_63/Elu:activations:0'model/dropout_37/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
model/dropout_37/dropout/Mul?
model/dropout_37/dropout/ShapeShape model/dense_63/Elu:activations:0*
T0*
_output_shapes
:2 
model/dropout_37/dropout/Shape?
5model/dropout_37/dropout/random_uniform/RandomUniformRandomUniform'model/dropout_37/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype027
5model/dropout_37/dropout/random_uniform/RandomUniform?
'model/dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'model/dropout_37/dropout/GreaterEqual/y?
%model/dropout_37/dropout/GreaterEqualGreaterEqual>model/dropout_37/dropout/random_uniform/RandomUniform:output:00model/dropout_37/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2'
%model/dropout_37/dropout/GreaterEqual?
model/dropout_37/dropout/CastCast)model/dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
model/dropout_37/dropout/Cast?
model/dropout_37/dropout/Mul_1Mul model/dropout_37/dropout/Mul:z:0!model/dropout_37/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2 
model/dropout_37/dropout/Mul_1
model/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
model/flatten_4/Const?
model/flatten_4/ReshapeReshape"model/dropout_37/dropout/Mul_1:z:0model/flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????x2
model/flatten_4/Reshape?
$model/dense_64/MatMul/ReadVariableOpReadVariableOp-model_dense_64_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02&
$model/dense_64/MatMul/ReadVariableOp?
model/dense_64/MatMulMatMul model/flatten_4/Reshape:output:0,model/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_64/MatMul?
%model/dense_64/BiasAdd/ReadVariableOpReadVariableOp.model_dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/dense_64/BiasAdd/ReadVariableOp?
model/dense_64/BiasAddBiasAddmodel/dense_64/MatMul:product:0-model/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_64/BiasAdd?
model/dense_64/EluElumodel/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/dense_64/Elu?
5model/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5model/tf.__operators__.getitem_17/strided_slice/stack?
7model/tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model/tf.__operators__.getitem_17/strided_slice/stack_1?
7model/tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_17/strided_slice/stack_2?
/model/tf.__operators__.getitem_17/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_17/strided_slice/stack:output:0@model/tf.__operators__.getitem_17/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask21
/model/tf.__operators__.getitem_17/strided_slice?
5model/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model/tf.__operators__.getitem_16/strided_slice/stack?
7model/tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7model/tf.__operators__.getitem_16/strided_slice/stack_1?
7model/tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_16/strided_slice/stack_2?
/model/tf.__operators__.getitem_16/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_16/strided_slice/stack:output:0@model/tf.__operators__.getitem_16/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask21
/model/tf.__operators__.getitem_16/strided_slice?
0model/tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :22
0model/tf.math.reduce_sum_9/Sum/reduction_indices?
model/tf.math.reduce_sum_9/SumSum8model/tf.__operators__.getitem_17/strided_slice:output:09model/tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2 
model/tf.math.reduce_sum_9/Sum?
0model/tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :22
0model/tf.math.reduce_sum_8/Sum/reduction_indices?
model/tf.math.reduce_sum_8/SumSum8model/tf.__operators__.getitem_16/strided_slice:output:09model/tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2 
model/tf.math.reduce_sum_8/Sum?
model/tf.math.subtract_9/SubSubmodel_241079'model/tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
model/tf.math.subtract_9/Sub?
model/tf.math.subtract_8/SubSubmodel_241082'model/tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
model/tf.math.subtract_8/Sub?
5model/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5model/tf.__operators__.getitem_19/strided_slice/stack?
7model/tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model/tf.__operators__.getitem_19/strided_slice/stack_1?
7model/tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_19/strided_slice/stack_2?
/model/tf.__operators__.getitem_19/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_19/strided_slice/stack:output:0@model/tf.__operators__.getitem_19/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask21
/model/tf.__operators__.getitem_19/strided_slice?
%model/tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/tf.expand_dims_9/ExpandDims/dim?
!model/tf.expand_dims_9/ExpandDims
ExpandDims model/tf.math.subtract_9/Sub:z:0.model/tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2#
!model/tf.expand_dims_9/ExpandDims?
5model/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model/tf.__operators__.getitem_18/strided_slice/stack?
7model/tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7model/tf.__operators__.getitem_18/strided_slice/stack_1?
7model/tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model/tf.__operators__.getitem_18/strided_slice/stack_2?
/model/tf.__operators__.getitem_18/strided_sliceStridedSlice model/dense_64/Elu:activations:0>model/tf.__operators__.getitem_18/strided_slice/stack:output:0@model/tf.__operators__.getitem_18/strided_slice/stack_1:output:0@model/tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask21
/model/tf.__operators__.getitem_18/strided_slice?
%model/tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/tf.expand_dims_8/ExpandDims/dim?
!model/tf.expand_dims_8/ExpandDims
ExpandDims model/tf.math.subtract_8/Sub:z:0.model/tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2#
!model/tf.expand_dims_8/ExpandDims?
model/tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_12/concat/axis?
model/tf.concat_12/concatConcatV28model/tf.__operators__.getitem_18/strided_slice:output:0*model/tf.expand_dims_8/ExpandDims:output:0'model/tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_12/concat?
model/tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_13/concat/axis?
model/tf.concat_13/concatConcatV28model/tf.__operators__.getitem_19/strided_slice:output:0*model/tf.expand_dims_9/ExpandDims:output:0'model/tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_13/concat?
model/tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/tf.concat_14/concat/axis?
model/tf.concat_14/concatConcatV2"model/tf.concat_12/concat:output:0"model/tf.concat_13/concat:output:0'model/tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model/tf.concat_14/concat}
IdentityIdentity"model/tf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp&^model/dense_61/BiasAdd/ReadVariableOp%^model/dense_61/MatMul/ReadVariableOp&^model/dense_62/BiasAdd/ReadVariableOp%^model/dense_62/MatMul/ReadVariableOp&^model/dense_63/BiasAdd/ReadVariableOp%^model/dense_63/MatMul/ReadVariableOp&^model/dense_64/BiasAdd/ReadVariableOp%^model/dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2N
%model/dense_61/BiasAdd/ReadVariableOp%model/dense_61/BiasAdd/ReadVariableOp2L
$model/dense_61/MatMul/ReadVariableOp$model/dense_61/MatMul/ReadVariableOp2N
%model/dense_62/BiasAdd/ReadVariableOp%model/dense_62/BiasAdd/ReadVariableOp2L
$model/dense_62/MatMul/ReadVariableOp$model/dense_62/MatMul/ReadVariableOp2N
%model/dense_63/BiasAdd/ReadVariableOp%model/dense_63/BiasAdd/ReadVariableOp2L
$model/dense_63/MatMul/ReadVariableOp$model/dense_63/MatMul/ReadVariableOp2N
%model/dense_64/BiasAdd/ReadVariableOp%model/dense_64/BiasAdd/ReadVariableOp2L
$model/dense_64/MatMul/ReadVariableOp$model/dense_64/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?
G
+__inference_dropout_35_layer_call_fn_241413

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2401852
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
)__inference_dense_61_layer_call_fn_241391

inputs
unknown:	?x
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_61_layer_call_and_return_conditional_losses_2401742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_241764
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: 5
"assignvariableop_5_dense_61_kernel:	?x.
 assignvariableop_6_dense_61_bias:x4
"assignvariableop_7_dense_62_kernel:xx.
 assignvariableop_8_dense_62_bias:x4
"assignvariableop_9_dense_63_kernel:xx/
!assignvariableop_10_dense_63_bias:x5
#assignvariableop_11_dense_64_kernel:x/
!assignvariableop_12_dense_64_bias:#
assignvariableop_13_total: #
assignvariableop_14_count: =
*assignvariableop_15_adam_dense_61_kernel_m:	?x6
(assignvariableop_16_adam_dense_61_bias_m:x<
*assignvariableop_17_adam_dense_62_kernel_m:xx6
(assignvariableop_18_adam_dense_62_bias_m:x<
*assignvariableop_19_adam_dense_63_kernel_m:xx6
(assignvariableop_20_adam_dense_63_bias_m:x<
*assignvariableop_21_adam_dense_64_kernel_m:x6
(assignvariableop_22_adam_dense_64_bias_m:=
*assignvariableop_23_adam_dense_61_kernel_v:	?x6
(assignvariableop_24_adam_dense_61_bias_v:x<
*assignvariableop_25_adam_dense_62_kernel_v:xx6
(assignvariableop_26_adam_dense_62_bias_v:x<
*assignvariableop_27_adam_dense_63_kernel_v:xx6
(assignvariableop_28_adam_dense_63_bias_v:x<
*assignvariableop_29_adam_dense_64_kernel_v:x6
(assignvariableop_30_adam_dense_64_bias_v:
identity_32??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_61_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_61_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_62_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_62_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_63_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_63_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_64_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_64_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_61_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_61_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_62_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_62_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_63_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_63_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_64_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_64_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_61_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_61_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_62_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_62_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_63_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_63_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_64_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_64_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31f
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_32?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
D__inference_dense_61_layer_call_and_return_conditional_losses_241382

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_35_layer_call_and_return_conditional_losses_241408

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
+__inference_dropout_35_layer_call_fn_241418

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2404222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
D__inference_dense_64_layer_call_and_return_conditional_losses_240254

inputs0
matmul_readvariableop_resource:x-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_241346

inputs
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2402972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_240241

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????x2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
(__inference_model_4_layer_call_fn_241154

inputs
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_2408062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?

?
&__inference_model_layer_call_fn_240320
input_5
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2402972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_5:	

_output_shapes
: :


_output_shapes
: 
?
e
F__inference_dropout_35_layer_call_and_return_conditional_losses_240422

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
A__inference_model_layer_call_and_return_conditional_losses_241321

inputs:
'dense_61_matmul_readvariableop_resource:	?x6
(dense_61_biasadd_readvariableop_resource:x9
'dense_62_matmul_readvariableop_resource:xx6
(dense_62_biasadd_readvariableop_resource:x9
'dense_63_matmul_readvariableop_resource:xx6
(dense_63_biasadd_readvariableop_resource:x9
'dense_64_matmul_readvariableop_resource:x6
(dense_64_biasadd_readvariableop_resource:
unknown
	unknown_0
identity??dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMulinputs&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_61/BiasAddp
dense_61/EluEludense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_61/Eluy
dropout_35/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_35/dropout/Const?
dropout_35/dropout/MulMuldense_61/Elu:activations:0!dropout_35/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout_35/dropout/Mul~
dropout_35/dropout/ShapeShapedense_61/Elu:activations:0*
T0*
_output_shapes
:2
dropout_35/dropout/Shape?
/dropout_35/dropout/random_uniform/RandomUniformRandomUniform!dropout_35/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype021
/dropout_35/dropout/random_uniform/RandomUniform?
!dropout_35/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_35/dropout/GreaterEqual/y?
dropout_35/dropout/GreaterEqualGreaterEqual8dropout_35/dropout/random_uniform/RandomUniform:output:0*dropout_35/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2!
dropout_35/dropout/GreaterEqual?
dropout_35/dropout/CastCast#dropout_35/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout_35/dropout/Cast?
dropout_35/dropout/Mul_1Muldropout_35/dropout/Mul:z:0dropout_35/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout_35/dropout/Mul_1?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMuldropout_35/dropout/Mul_1:z:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_62/BiasAddp
dense_62/EluEludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_62/Eluy
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_36/dropout/Const?
dropout_36/dropout/MulMuldense_62/Elu:activations:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout_36/dropout/Mul~
dropout_36/dropout/ShapeShapedense_62/Elu:activations:0*
T0*
_output_shapes
:2
dropout_36/dropout/Shape?
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype021
/dropout_36/dropout/random_uniform/RandomUniform?
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_36/dropout/GreaterEqual/y?
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2!
dropout_36/dropout/GreaterEqual?
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout_36/dropout/Cast?
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout_36/dropout/Mul_1?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMuldropout_36/dropout/Mul_1:z:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_63/BiasAddp
dense_63/EluEludense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_63/Eluy
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_37/dropout/Const?
dropout_37/dropout/MulMuldense_63/Elu:activations:0!dropout_37/dropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout_37/dropout/Mul~
dropout_37/dropout/ShapeShapedense_63/Elu:activations:0*
T0*
_output_shapes
:2
dropout_37/dropout/Shape?
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype021
/dropout_37/dropout/random_uniform/RandomUniform?
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_37/dropout/GreaterEqual/y?
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2!
dropout_37/dropout/GreaterEqual?
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout_37/dropout/Cast?
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout_37/dropout/Mul_1s
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
flatten_4/Const?
flatten_4/ReshapeReshapedropout_37/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????x2
flatten_4/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_4/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/BiasAddp
dense_64/EluEludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_64/Elu?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?

?
D__inference_dense_63_layer_call_and_return_conditional_losses_241476

inputs0
matmul_readvariableop_resource:xx-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_240937
input_1
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2401562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?Y
?
A__inference_model_layer_call_and_return_conditional_losses_240638
input_5"
dense_61_240577:	?x
dense_61_240579:x!
dense_62_240583:xx
dense_62_240585:x!
dense_63_240589:xx
dense_63_240591:x!
dense_64_240596:x
dense_64_240598:
unknown
	unknown_0
identity?? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_61_240577dense_61_240579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_61_layer_call_and_return_conditional_losses_2401742"
 dense_61/StatefulPartitionedCall?
dropout_35/PartitionedCallPartitionedCall)dense_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2401852
dropout_35/PartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_62_240583dense_62_240585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_2401982"
 dense_62/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2402092
dropout_36/PartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_63_240589dense_63_240591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_2402222"
 dense_63/StatefulPartitionedCall?
dropout_37/PartitionedCallPartitionedCall)dense_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2402332
dropout_37/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall#dropout_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_2402412
flatten_4/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_64_240596dense_64_240598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_2402542"
 dense_64/StatefulPartitionedCall?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_5:	

_output_shapes
: :


_output_shapes
: 
?
?
)__inference_dense_64_layer_call_fn_241543

inputs
unknown:x
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_2402542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_241443

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
F
*__inference_flatten_4_layer_call_fn_241523

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_2402412
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
e
F__inference_dropout_37_layer_call_and_return_conditional_losses_241502

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????x2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_241518

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????x2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
D__inference_dense_61_layer_call_and_return_conditional_losses_240174

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_241490

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_240233

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_240209

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
(__inference_model_4_layer_call_fn_240754
input_1
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_2407312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1:	

_output_shapes
: :


_output_shapes
: 
?

?
D__inference_dense_63_layer_call_and_return_conditional_losses_240222

inputs0
matmul_readvariableop_resource:xx-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xx*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?]
?
A__inference_model_layer_call_and_return_conditional_losses_240526

inputs"
dense_61_240465:	?x
dense_61_240467:x!
dense_62_240471:xx
dense_62_240473:x!
dense_63_240477:xx
dense_63_240479:x!
dense_64_240484:x
dense_64_240486:
unknown
	unknown_0
identity?? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCallinputsdense_61_240465dense_61_240467*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_61_layer_call_and_return_conditional_losses_2401742"
 dense_61/StatefulPartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2404222$
"dropout_35/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_62_240471dense_62_240473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_2401982"
 dense_62/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2403892$
"dropout_36/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_63_240477dense_63_240479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_2402222"
 dense_63/StatefulPartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2403562$
"dropout_37/StatefulPartitionedCall?
flatten_4/PartitionedCallPartitionedCall+dropout_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_2402412
flatten_4/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_64_240484dense_64_240486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_2402542"
 dense_64/StatefulPartitionedCall?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?

?
(__inference_model_4_layer_call_fn_241129

inputs
unknown:	?x
	unknown_0:x
	unknown_1:xx
	unknown_2:x
	unknown_3:xx
	unknown_4:x
	unknown_5:x
	unknown_6:
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_2407312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?]
?
A__inference_model_layer_call_and_return_conditional_losses_240702
input_5"
dense_61_240641:	?x
dense_61_240643:x!
dense_62_240647:xx
dense_62_240649:x!
dense_63_240653:xx
dense_63_240655:x!
dense_64_240660:x
dense_64_240662:
unknown
	unknown_0
identity?? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_61_240641dense_61_240643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_61_layer_call_and_return_conditional_losses_2401742"
 dense_61/StatefulPartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_2404222$
"dropout_35/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_62_240647dense_62_240649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_2401982"
 dense_62/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_2403892$
"dropout_36/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_63_240653dense_63_240655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_2402222"
 dense_63/StatefulPartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2403562$
"dropout_37/StatefulPartitionedCall?
flatten_4/PartitionedCallPartitionedCall+dropout_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_2402412
flatten_4/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_64_240660dense_64_240662*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_2402542"
 dense_64/StatefulPartitionedCall?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlice)dense_64/StatefulPartitionedCall:output:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_5:	

_output_shapes
: :


_output_shapes
: 
?
G
+__inference_dropout_37_layer_call_fn_241507

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_2402332
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
C__inference_model_4_layer_call_and_return_conditional_losses_240806

inputs
model_240784:	?x
model_240786:x
model_240788:xx
model_240790:x
model_240792:xx
model_240794:x
model_240796:x
model_240798:
model_240800
model_240802
identity??model/StatefulPartitionedCall?
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_240784model_240786model_240788model_240790model_240792model_240794model_240796model_240798model_240800model_240802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2405262
model/StatefulPartitionedCall?
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityn
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: 
?

?
D__inference_dense_64_layer_call_and_return_conditional_losses_241534

inputs0
matmul_readvariableop_resource:x-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?D
?
__inference__traced_save_241661
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop5
1savev2_adam_dense_64_kernel_m_read_readvariableop3
/savev2_adam_dense_64_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop5
1savev2_adam_dense_64_kernel_v_read_readvariableop3
/savev2_adam_dense_64_bias_v_read_readvariableop
savev2_const_2

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop1savev2_adam_dense_64_kernel_m_read_readvariableop/savev2_adam_dense_64_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableop1savev2_adam_dense_64_kernel_v_read_readvariableop/savev2_adam_dense_64_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :	?x:x:xx:x:xx:x:x:: : :	?x:x:xx:x:xx:x:x::	?x:x:xx:x:xx:x:x:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?x: 

_output_shapes
:x:$ 

_output_shapes

:xx: 	

_output_shapes
:x:$
 

_output_shapes

:xx: 

_output_shapes
:x:$ 

_output_shapes

:x: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?x: 

_output_shapes
:x:$ 

_output_shapes

:xx: 

_output_shapes
:x:$ 

_output_shapes

:xx: 

_output_shapes
:x:$ 

_output_shapes

:x: 

_output_shapes
::%!

_output_shapes
:	?x: 

_output_shapes
:x:$ 

_output_shapes

:xx: 

_output_shapes
:x:$ 

_output_shapes

:xx: 

_output_shapes
:x:$ 

_output_shapes

:x: 

_output_shapes
:: 

_output_shapes
: 
?b
?
A__inference_model_layer_call_and_return_conditional_losses_241227

inputs:
'dense_61_matmul_readvariableop_resource:	?x6
(dense_61_biasadd_readvariableop_resource:x9
'dense_62_matmul_readvariableop_resource:xx6
(dense_62_biasadd_readvariableop_resource:x9
'dense_63_matmul_readvariableop_resource:xx6
(dense_63_biasadd_readvariableop_resource:x9
'dense_64_matmul_readvariableop_resource:x6
(dense_64_biasadd_readvariableop_resource:
unknown
	unknown_0
identity??dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMulinputs&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_61/BiasAddp
dense_61/EluEludense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_61/Elu?
dropout_35/IdentityIdentitydense_61/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
dropout_35/Identity?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMuldropout_35/Identity:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_62/BiasAddp
dense_62/EluEludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_62/Elu?
dropout_36/IdentityIdentitydense_62/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
dropout_36/Identity?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:xx*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMuldropout_36/Identity:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_63/BiasAddp
dense_63/EluEludense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_63/Elu?
dropout_37/IdentityIdentitydense_63/Elu:activations:0*
T0*'
_output_shapes
:?????????x2
dropout_37/Identitys
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
flatten_4/Const?
flatten_4/ReshapeReshapedropout_37/Identity:output:0flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????x2
flatten_4/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_4/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/BiasAddp
dense_64/EluEludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_64/Elu?
/tf.__operators__.getitem_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_17/strided_slice/stack?
1tf.__operators__.getitem_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_17/strided_slice/stack_1?
1tf.__operators__.getitem_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_17/strided_slice/stack_2?
)tf.__operators__.getitem_17/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_17/strided_slice/stack:output:0:tf.__operators__.getitem_17/strided_slice/stack_1:output:0:tf.__operators__.getitem_17/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_17/strided_slice?
/tf.__operators__.getitem_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_16/strided_slice/stack?
1tf.__operators__.getitem_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_16/strided_slice/stack_1?
1tf.__operators__.getitem_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_16/strided_slice/stack_2?
)tf.__operators__.getitem_16/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_16/strided_slice/stack:output:0:tf.__operators__.getitem_16/strided_slice/stack_1:output:0:tf.__operators__.getitem_16/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_16/strided_slice?
*tf.math.reduce_sum_9/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_9/Sum/reduction_indices?
tf.math.reduce_sum_9/SumSum2tf.__operators__.getitem_17/strided_slice:output:03tf.math.reduce_sum_9/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_9/Sum?
*tf.math.reduce_sum_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_8/Sum/reduction_indices?
tf.math.reduce_sum_8/SumSum2tf.__operators__.getitem_16/strided_slice:output:03tf.math.reduce_sum_8/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
tf.math.reduce_sum_8/Sum?
tf.math.subtract_9/SubSubunknown!tf.math.reduce_sum_9/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.subtract_8/SubSub	unknown_0!tf.math.reduce_sum_8/Sum:output:0*
T0*#
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
/tf.__operators__.getitem_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_19/strided_slice/stack?
1tf.__operators__.getitem_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1tf.__operators__.getitem_19/strided_slice/stack_1?
1tf.__operators__.getitem_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_19/strided_slice/stack_2?
)tf.__operators__.getitem_19/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_19/strided_slice/stack:output:0:tf.__operators__.getitem_19/strided_slice/stack_1:output:0:tf.__operators__.getitem_19/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
ellipsis_mask*
end_mask2+
)tf.__operators__.getitem_19/strided_slice?
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_9/ExpandDims/dim?
tf.expand_dims_9/ExpandDims
ExpandDimstf.math.subtract_9/Sub:z:0(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_9/ExpandDims?
/tf.__operators__.getitem_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_18/strided_slice/stack?
1tf.__operators__.getitem_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_18/strided_slice/stack_1?
1tf.__operators__.getitem_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_18/strided_slice/stack_2?
)tf.__operators__.getitem_18/strided_sliceStridedSlicedense_64/Elu:activations:08tf.__operators__.getitem_18/strided_slice/stack:output:0:tf.__operators__.getitem_18/strided_slice/stack_1:output:0:tf.__operators__.getitem_18/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask2+
)tf.__operators__.getitem_18/strided_slice?
tf.expand_dims_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
tf.expand_dims_8/ExpandDims/dim?
tf.expand_dims_8/ExpandDims
ExpandDimstf.math.subtract_8/Sub:z:0(tf.expand_dims_8/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
tf.expand_dims_8/ExpandDims
tf.concat_12/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_12/concat/axis?
tf.concat_12/concatConcatV22tf.__operators__.getitem_18/strided_slice:output:0$tf.expand_dims_8/ExpandDims:output:0!tf.concat_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_12/concat
tf.concat_13/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_13/concat/axis?
tf.concat_13/concatConcatV22tf.__operators__.getitem_19/strided_slice:output:0$tf.expand_dims_9/ExpandDims:output:0!tf.concat_13/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_13/concat
tf.concat_14/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_14/concat/axis?
tf.concat_14/concatConcatV2tf.concat_12/concat:output:0tf.concat_13/concat:output:0!tf.concat_14/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
tf.concat_14/concatw
IdentityIdentitytf.concat_14/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:	

_output_shapes
: :


_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_11
serving_default_input_1:0??????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
m
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_model
?
layer-0
	layer_with_weights-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
regularization_losses
trainable_variables
 	variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_network
?
"iter

#beta_1

$beta_2
	%decay
&learning_rate'm?(m?)m?*m?+m?,m?-m?.m?'v?(v?)v?*v?+v?,v?-v?.v?"
	optimizer
 "
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
-6
.7"
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
-6
.7"
trackable_list_wrapper
?
regularization_losses

/layers
0non_trainable_variables
trainable_variables
1layer_metrics
2layer_regularization_losses
3metrics
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
"
_tf_keras_input_layer
?

'kernel
(bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
8regularization_losses
9trainable_variables
:	variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

)kernel
*bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

+kernel
,bias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

-kernel
.bias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
(
T	keras_api"
_tf_keras_layer
(
U	keras_api"
_tf_keras_layer
(
V	keras_api"
_tf_keras_layer
(
W	keras_api"
_tf_keras_layer
(
X	keras_api"
_tf_keras_layer
(
Y	keras_api"
_tf_keras_layer
(
Z	keras_api"
_tf_keras_layer
(
[	keras_api"
_tf_keras_layer
(
\	keras_api"
_tf_keras_layer
(
]	keras_api"
_tf_keras_layer
(
^	keras_api"
_tf_keras_layer
(
_	keras_api"
_tf_keras_layer
(
`	keras_api"
_tf_keras_layer
 "
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
-6
.7"
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
-6
.7"
trackable_list_wrapper
?
regularization_losses

alayers
bnon_trainable_variables
trainable_variables
clayer_metrics
dlayer_regularization_losses
emetrics
 	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
": 	?x2dense_61/kernel
:x2dense_61/bias
!:xx2dense_62/kernel
:x2dense_62/bias
!:xx2dense_63/kernel
:x2dense_63/bias
!:x2dense_64/kernel
:2dense_64/bias
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
f0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
4regularization_losses

glayers
hnon_trainable_variables
5trainable_variables
ilayer_metrics
jlayer_regularization_losses
kmetrics
6	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
8regularization_losses

llayers
mnon_trainable_variables
9trainable_variables
nlayer_metrics
olayer_regularization_losses
pmetrics
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
<regularization_losses

qlayers
rnon_trainable_variables
=trainable_variables
slayer_metrics
tlayer_regularization_losses
umetrics
>	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@regularization_losses

vlayers
wnon_trainable_variables
Atrainable_variables
xlayer_metrics
ylayer_regularization_losses
zmetrics
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
Dregularization_losses

{layers
|non_trainable_variables
Etrainable_variables
}layer_metrics
~layer_regularization_losses
metrics
F	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hregularization_losses
?layers
?non_trainable_variables
Itrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
J	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lregularization_losses
?layers
?non_trainable_variables
Mtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
N	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
Pregularization_losses
?layers
?non_trainable_variables
Qtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
R	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
?
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
':%	?x2Adam/dense_61/kernel/m
 :x2Adam/dense_61/bias/m
&:$xx2Adam/dense_62/kernel/m
 :x2Adam/dense_62/bias/m
&:$xx2Adam/dense_63/kernel/m
 :x2Adam/dense_63/bias/m
&:$x2Adam/dense_64/kernel/m
 :2Adam/dense_64/bias/m
':%	?x2Adam/dense_61/kernel/v
 :x2Adam/dense_61/bias/v
&:$xx2Adam/dense_62/kernel/v
 :x2Adam/dense_62/bias/v
&:$xx2Adam/dense_63/kernel/v
 :x2Adam/dense_63/bias/v
&:$x2Adam/dense_64/kernel/v
 :2Adam/dense_64/bias/v
?2?
C__inference_model_4_layer_call_and_return_conditional_losses_241010
C__inference_model_4_layer_call_and_return_conditional_losses_241104
C__inference_model_4_layer_call_and_return_conditional_losses_240879
C__inference_model_4_layer_call_and_return_conditional_losses_240904?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_model_4_layer_call_fn_240754
(__inference_model_4_layer_call_fn_241129
(__inference_model_4_layer_call_fn_241154
(__inference_model_4_layer_call_fn_240854?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_240156input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_model_layer_call_and_return_conditional_losses_241227
A__inference_model_layer_call_and_return_conditional_losses_241321
A__inference_model_layer_call_and_return_conditional_losses_240638
A__inference_model_layer_call_and_return_conditional_losses_240702?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_model_layer_call_fn_240320
&__inference_model_layer_call_fn_241346
&__inference_model_layer_call_fn_241371
&__inference_model_layer_call_fn_240574?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_240937input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_61_layer_call_and_return_conditional_losses_241382?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_61_layer_call_fn_241391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_35_layer_call_and_return_conditional_losses_241396
F__inference_dropout_35_layer_call_and_return_conditional_losses_241408?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_35_layer_call_fn_241413
+__inference_dropout_35_layer_call_fn_241418?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_62_layer_call_and_return_conditional_losses_241429?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_62_layer_call_fn_241438?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_36_layer_call_and_return_conditional_losses_241443
F__inference_dropout_36_layer_call_and_return_conditional_losses_241455?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_36_layer_call_fn_241460
+__inference_dropout_36_layer_call_fn_241465?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_63_layer_call_and_return_conditional_losses_241476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_63_layer_call_fn_241485?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_37_layer_call_and_return_conditional_losses_241490
F__inference_dropout_37_layer_call_and_return_conditional_losses_241502?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_37_layer_call_fn_241507
+__inference_dropout_37_layer_call_fn_241512?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_flatten_4_layer_call_and_return_conditional_losses_241518?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_4_layer_call_fn_241523?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_64_layer_call_and_return_conditional_losses_241534?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_64_layer_call_fn_241543?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const
J	
Const_1?
!__inference__wrapped_model_240156v'()*+,-.??1?.
'?$
"?
input_1??????????
? "3?0
.
output_1"?
output_1??????????
D__inference_dense_61_layer_call_and_return_conditional_losses_241382]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????x
? }
)__inference_dense_61_layer_call_fn_241391P'(0?-
&?#
!?
inputs??????????
? "??????????x?
D__inference_dense_62_layer_call_and_return_conditional_losses_241429\)*/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????x
? |
)__inference_dense_62_layer_call_fn_241438O)*/?,
%?"
 ?
inputs?????????x
? "??????????x?
D__inference_dense_63_layer_call_and_return_conditional_losses_241476\+,/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????x
? |
)__inference_dense_63_layer_call_fn_241485O+,/?,
%?"
 ?
inputs?????????x
? "??????????x?
D__inference_dense_64_layer_call_and_return_conditional_losses_241534\-./?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????
? |
)__inference_dense_64_layer_call_fn_241543O-./?,
%?"
 ?
inputs?????????x
? "???????????
F__inference_dropout_35_layer_call_and_return_conditional_losses_241396\3?0
)?&
 ?
inputs?????????x
p 
? "%?"
?
0?????????x
? ?
F__inference_dropout_35_layer_call_and_return_conditional_losses_241408\3?0
)?&
 ?
inputs?????????x
p
? "%?"
?
0?????????x
? ~
+__inference_dropout_35_layer_call_fn_241413O3?0
)?&
 ?
inputs?????????x
p 
? "??????????x~
+__inference_dropout_35_layer_call_fn_241418O3?0
)?&
 ?
inputs?????????x
p
? "??????????x?
F__inference_dropout_36_layer_call_and_return_conditional_losses_241443\3?0
)?&
 ?
inputs?????????x
p 
? "%?"
?
0?????????x
? ?
F__inference_dropout_36_layer_call_and_return_conditional_losses_241455\3?0
)?&
 ?
inputs?????????x
p
? "%?"
?
0?????????x
? ~
+__inference_dropout_36_layer_call_fn_241460O3?0
)?&
 ?
inputs?????????x
p 
? "??????????x~
+__inference_dropout_36_layer_call_fn_241465O3?0
)?&
 ?
inputs?????????x
p
? "??????????x?
F__inference_dropout_37_layer_call_and_return_conditional_losses_241490\3?0
)?&
 ?
inputs?????????x
p 
? "%?"
?
0?????????x
? ?
F__inference_dropout_37_layer_call_and_return_conditional_losses_241502\3?0
)?&
 ?
inputs?????????x
p
? "%?"
?
0?????????x
? ~
+__inference_dropout_37_layer_call_fn_241507O3?0
)?&
 ?
inputs?????????x
p 
? "??????????x~
+__inference_dropout_37_layer_call_fn_241512O3?0
)?&
 ?
inputs?????????x
p
? "??????????x?
E__inference_flatten_4_layer_call_and_return_conditional_losses_241518X/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????x
? y
*__inference_flatten_4_layer_call_fn_241523K/?,
%?"
 ?
inputs?????????x
? "??????????x?
C__inference_model_4_layer_call_and_return_conditional_losses_240879l'()*+,-.??5?2
+?(
"?
input_1??????????
p 
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_240904l'()*+,-.??5?2
+?(
"?
input_1??????????
p
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_241010k'()*+,-.??4?1
*?'
!?
inputs??????????
p 
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_241104k'()*+,-.??4?1
*?'
!?
inputs??????????
p
? "%?"
?
0?????????
? ?
(__inference_model_4_layer_call_fn_240754_'()*+,-.??5?2
+?(
"?
input_1??????????
p 
? "???????????
(__inference_model_4_layer_call_fn_240854_'()*+,-.??5?2
+?(
"?
input_1??????????
p
? "???????????
(__inference_model_4_layer_call_fn_241129^'()*+,-.??4?1
*?'
!?
inputs??????????
p 
? "???????????
(__inference_model_4_layer_call_fn_241154^'()*+,-.??4?1
*?'
!?
inputs??????????
p
? "???????????
A__inference_model_layer_call_and_return_conditional_losses_240638p'()*+,-.??9?6
/?,
"?
input_5??????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_240702p'()*+,-.??9?6
/?,
"?
input_5??????????
p

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_241227o'()*+,-.??8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_241321o'()*+,-.??8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
&__inference_model_layer_call_fn_240320c'()*+,-.??9?6
/?,
"?
input_5??????????
p 

 
? "???????????
&__inference_model_layer_call_fn_240574c'()*+,-.??9?6
/?,
"?
input_5??????????
p

 
? "???????????
&__inference_model_layer_call_fn_241346b'()*+,-.??8?5
.?+
!?
inputs??????????
p 

 
? "???????????
&__inference_model_layer_call_fn_241371b'()*+,-.??8?5
.?+
!?
inputs??????????
p

 
? "???????????
$__inference_signature_wrapper_240937?'()*+,-.??<?9
? 
2?/
-
input_1"?
input_1??????????"3?0
.
output_1"?
output_1?????????